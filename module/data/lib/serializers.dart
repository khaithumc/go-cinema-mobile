import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:data/remote/response/search_movie_response.dart';
import 'package:utils/utils.dart';


import 'local/user_local.dart';
import 'remote/response/category_response.dart';
import 'remote/response/comment_response.dart';
import 'remote/response/comments_response.dart';
import 'remote/response/error_response.dart';
import 'remote/response/favorite_response.dart';
import 'remote/response/full_reservation_response.dart';
import 'remote/response/movie_and_show_time_response.dart';
import 'remote/response/movie_detail_response.dart';
import 'remote/response/movie_response.dart';
import 'remote/response/notification_response.dart';
import 'remote/response/person_response.dart';
import 'remote/response/product_response.dart';
import 'remote/response/promotion_response.dart';
import 'remote/response/reservation_response.dart';
import 'remote/response/seat_response.dart';
import 'remote/response/show_time_and_theatre_response.dart';
import 'remote/response/show_time_response.dart';
import 'remote/response/theatre_response.dart';
import 'remote/response/ticket_response.dart';
import 'remote/response/user_response.dart';

part 'serializers.g.dart';

const List<Type> _registeredTypes = [
  UserLocal,
  LocationLocal,
  UserResponse,
  LocationResponse,
  SingleMessageErrorResponse,
  MultipleMessagesErrorResponse,
  MovieResponse,
  ShowTimeResponse,
  TheatreResponse,
  ShowTimeAndTheatreResponse,
  CommentResponse,
  CommentsResponse,
  MovieDetailResponse,
  PersonResponse,
  CategoryResponse,
  TicketResponse,
  SeatResponse,
  ProductResponse,
  ReservationResponse,
  ProductIdAndQuantity,
  FavoriteResponse,
  PromotionResponse,
  NotificationResponse,
  NotificationResponse_ReservationResponse,
  ShowTimeFullResponse,
  FullReservationResponse,
  ProductAndQuantityResponse,
  MovieAndShowTimeResponse,
  SearchMovieResponse,
];

/// Addition builder factories, if needed.
final List<BuilderFactory> _factories = [];

@SerializersFor(_registeredTypes)
final Serializers serializers = (_$serializers.toBuilder()
  ..add(CustomIso8601DateTimeSerializer())
  ..addPlugin(StandardJsonPlugin())
  ..addTypes())
    .build();

class BuilderFactory {
  final FullType type;
  final dynamic Function() function;

  BuilderFactory(this.type, this.function);
}

extension on SerializersBuilder {
  void addTypes() {
    for (final t in _registeredTypes) {
      addBuilderFactory(
        FullType(BuiltList, [FullType(t)]),
            () => ListBuilder<dynamic>(),
      );
      addBuilderFactory(
        FullType(BuiltList, [FullType.nullable(t)]),
            () => ListBuilder<dynamic>(),
      );
      logger.d('Registered ${FullType(BuiltList, [FullType(t)])}');
      logger.d('Registered ${FullType(BuiltList, [FullType.nullable(t)])}');
    }
    for (final f in _factories) {
      addBuilderFactory(f.type, f.function);
      logger.d('Registered ${f.type}');
    }
  }
}

/// Deserialize [json] to [BuiltList<T>].
/// [json] is [List] or [Map] and is returned from [jsonDecode].
/// Example:
/// ```dart
/// final json = await _authClient.getJson(uri);
/// final BuiltList<MyModelResponse> models = deserializeBuiltList<MyModel>(json);
/// ```
BuiltList<T> deserializeBuiltList<T extends Object>(Object json) {
  try {
    final listOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltList, [FullType(T)]),
    )! as BuiltList<dynamic>;
    return listOfDynamic.cast<T>().toBuiltList();
  } on DeserializationError catch (e) {
    logger.e(
        '>>>>> Try to add specified type, eg: deserializeBuiltList<MyModel>(json) $e');
    rethrow;
  }
}

BuiltMap<String, T> deserializeBuiltMap<T extends Object>(Object json) {
  try {
    final mapOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltMap, [FullType(T)])
    )! as BuiltMap<String, dynamic>;

    return mapOfDynamic as BuiltMap<String, T>;
  } on DeserializationError catch (e) {
    logger.e(e);
    rethrow;
  }
}

/*final response = serializers.deserialize(
  data,
  specifiedType: builtMapStringReservationResponse,
) as BuiltMap<String, ReservationResponse>;*/

/// Deserialize [json] to [BuiltList<T?>].
/// [json] is [List] or [Map] and is returned from [jsonDecode].
/// Example:
/// ```dart
/// final json = await _authClient.getJson(uri);
/// final BuiltList<MyModelResponse?> models = deserializeBuiltListNullable<MyModelResponse>(json);
/// ```
BuiltList<T?> deserializeBuiltListNullable<T extends Object>(Object json) {
  try {
    final listOfDynamic = serializers.deserialize(
      json,
      specifiedType: FullType(BuiltList, [FullType.nullable(T)]),
    )! as BuiltList<dynamic>;
    return listOfDynamic.cast<T?>().toBuiltList();
  } on DeserializationError catch (_) {
    logger.e(
        '>>>>> Try to add specified type, eg: deserializeBuiltListNullable<MyModel>(json)');
    rethrow;
  }
}

