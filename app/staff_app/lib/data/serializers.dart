import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:khaithu/data/local/user_local.dart';
import 'package:khaithu/data/remote/response/category_response.dart';
import 'package:khaithu/data/remote/response/movie_response.dart';
import 'package:khaithu/data/remote/response/person_response.dart';
import 'package:khaithu/data/remote/response/search_movie_response.dart';
import 'package:khaithu/data/remote/response/show_time_response.dart';
import 'package:khaithu/data/remote/response/user_response.dart';
import 'package:khaithu/utils/logger.dart';

import '../utils/custom_iso_8601_date_time_serializer.dart';
import 'remote/response/full_reservation_response.dart';
import 'remote/response/product_response.dart';
import 'remote/response/promotion_response.dart';
import 'remote/response/seat_response.dart';
import 'remote/response/ticket_response.dart';

part 'serializers.g.dart';

const List<Type> _registeredTypes = [
  // Request bodies
  TicketResponse,
  SeatResponse,
  FullReservationResponse,
  PromotionResponse,
  ProductResponse,
  UserResponse,
  LocationResponse,
  UserLocal,
  ShowTimeResponse,
  ShowTimeResponseMovieResponse,
  MovieResponse,
  PersonResponse,
  CategoryResponse,
  ShowTimeFullResponse,
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
