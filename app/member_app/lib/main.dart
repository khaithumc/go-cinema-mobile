import 'package:built_value/built_value.dart';
import 'package:config/config.dart';
import 'package:data/local/search_keyword_source_impl.dart';
import 'package:data/local/user_local_source_impl.dart';
import 'package:data/mappers.dart';
import 'package:data/remote/auth_client.dart';
import 'package:data/remote/response/card_response.dart';
import 'package:data/remote/response/comment_response.dart';
import 'package:data/remote/response/comments_response.dart';
import 'package:data/remote/response/notification_response.dart';
import 'package:data/remote/response/product_response.dart';
import 'package:data/remote/response/promotion_response.dart';
import 'package:data/remote/response/theatre_response.dart';
import 'package:data/remote/response/ticket_response.dart';
import 'package:data/repository/city_repository_impl.dart';
import 'package:data/repository/favorites_repository_impl.dart';
import 'package:data/repository/movie_repository_impl.dart';
import 'package:data/repository/reservation_repository_impl.dart';
import 'package:data/repository/user_repository_impl.dart';
import 'package:disposebag/disposebag.dart';
import 'package:domain/model/card.dart';
import 'package:domain/model/comment.dart';
import 'package:domain/model/comments.dart';
import 'package:domain/model/notification.dart' as domain;
import 'package:domain/model/product.dart';
import 'package:domain/model/promotion.dart';
import 'package:domain/model/theatre.dart';
import 'package:domain/model/ticket.dart';
import 'package:domain/repository/city_repository.dart';
import 'package:domain/repository/favorites_repository.dart';
import 'package:domain/repository/movie_repository.dart';
import 'package:domain/repository/reservation_repository.dart';
import 'package:domain/repository/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_pattern/flutter_bloc_pattern.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_provider/flutter_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:utils/utils.dart';
import 'package:http/http.dart' as http;

import 'app.dart';
import 'fcm_notification.dart';
import 'locale_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  EnvManager.mode = EnvMode.DEV;

  _setupLogging();

  await Firebase.initializeApp();

  await _envConfig();

  final auth = FirebaseAuth.instance;
  final storage = FirebaseStorage.instance;
  final firebaseMessaging = FirebaseMessaging.instance;
  final googleSignIn = GoogleSignIn();
  final facebookAuth = FacebookAuth.instance;

  final preferences = RxSharedPreferences.getInstance();
  final userLocalSource = UserLocalSourceImpl(preferences);
  final keywordSource = SearchKeywordSourceImpl(preferences);

  final client = http.Client();
  const httpTimeout = Duration(seconds: 20);

  final normalClient = NormalHttpClient(client, httpTimeout);
  print(normalClient);

  late UserRepository userRepository;

  final authClient = AuthHttpClient(
    client,
    httpTimeout,
    () => userRepository.logout(),
    () => userLocalSource.token,
  );

  userRepository = UserRepositoryImpl(
    auth,
    userLocalSource,
    authClient,
    userResponseToUserLocal,
    storage,
    userLocalToUserDomain,
    googleSignIn,
    facebookAuth,
    firebaseMessaging,
    keywordSource,
  );

  final fcmNotificationManager = FcmNotificationManager(
    authClient,
    firebaseMessaging,
    preferences,
  );

  final movieRepositoryFactory = (BuildContext _) {
    return MovieRepositoryImpl(
      authClient,
      movieResponseToMovie,
      showTimeAndTheatreResponsesToTheatreAndShowTimes,
      movieDetailResponseToMovie,
      movieAndShowTimeResponsesToMovieAndShowTimes,
      keywordSource,
      categoryResponseToCategory,
    );
  };

  final cityRepository = CityRepositoryImpl(preferences, userLocalSource);

  final reservationRepositoryFactory = (BuildContext context) {
    return ReservationRepositoryImpl(
      authClient,
      userLocalSource,
      reservationResponseToReservation,
      fullReservationResponseToReservation,
    );
  };

  final favoritesRepositoryFactory = (BuildContext context) {
    return FavoritesRepositoryImpl(
      authClient,
      movieResponseToMovie,
    );
  };

  final localeBloc = LocaleBloc(preferences);

  runApp(
    Providers(
      providers: [
        Provider<AuthHttpClient>.value(authClient),
        // Mappers
        Provider<Function1<CommentsResponse, Comments>>.value(
            commentsResponseToComments),
        Provider<Function1<CommentResponse, Comment>>.value(
            commentResponseToComment),
        Provider<Function1<TicketResponse, Ticket>>.value(
            ticketResponseToTicket),
        Provider<Function1<NotificationResponse, domain.Notification>>.value(
            notificationResponseToNotification),
        Provider<Function1<TheatreResponse, Theatre>>.value(
            theatreResponseToTheatre),
        Provider<Function1<ProductResponse, Product>>.value(
            productResponseToProduct),
        Provider<Function1<CardResponse, Card>>.value(cardResponseToCard),
        Provider<Function1<PromotionResponse, Promotion>>.value(
            promotionResponseToPromotion),
        // App scope repos
        Provider<UserRepository>.value(userRepository),
        Provider<CityRepository>.value(cityRepository),
        Provider<MovieRepository>.factory(movieRepositoryFactory),
        Provider<ReservationRepository>.factory(reservationRepositoryFactory),
        Provider<FavoritesRepository>.factory(favoritesRepositoryFactory),
        Provider<FcmNotificationManager>.value(fcmNotificationManager),
      ],
      child: BlocProvider(
        initBloc: (_) => localeBloc,
        child: MyApp(),
      ),
    ),
  );
}

Future<void> _envConfig() async {
  final fromRemote = <EnvKey, String>{};

  final remoteConfig = RemoteConfig.instance;

  // Using zero duration to force fetching from remote server.
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 10),
      minimumFetchInterval: Duration.zero,
    ),
  );
  try {
    await remoteConfig.fetchAndActivate();

    final baseUrl = remoteConfig.getString(describeEnum(EnvKey.BASE_URL));
    if (baseUrl != null && baseUrl.isNotEmpty) {
      fromRemote[EnvKey.BASE_URL] = baseUrl;
    }

    print('###### baseUrl=$baseUrl');
  } catch (e) {
    print('###### error $e');
  }

  await EnvManager.shared.init(fromRemote);
}

void _setupLogging() {
  final isDev = EnvManager.mode == EnvMode.DEV;
  print('💡💡💡 isDev=$isDev');

  // Prints a message to the console, which you can access using the "flutter"
  // tool's "logs" command ("flutter logs").
  debugPrint = isDev ? debugPrintSynchronously : (message, {wrapWidth}) {};

  // Logger that logs disposed resources.
  DisposeBagConfigs.logger = isDev ? disposeBagDefaultLogger : null;

  // Log messages about operations (such as read, write, value change) and stream events.
  RxSharedPreferencesConfigs.logger =
  isDev ? const RxSharedPreferencesDefaultLogger() : null;

  //Logging Http request and response.
  AppClientLoggerDefaults.logger =
  isDev ? const DevAppClientLogger() : const ProdAppClientLogger();

  streamDebugPrint = isDev ? print : null;

  // Function used by generated code to get a `BuiltValueToStringHelper`.
  newBuiltValueToStringHelper = (className) => isDev
      ? CustomIndentingBuiltValueToStringHelper(className, true)
      : const EmptyBuiltValueToStringHelper();

  debugPrint('💡💡💡 debugPrint prints this line');
}
