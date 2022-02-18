import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import '../../../utils/iterable.dart';

import '../../serializers.dart';
import 'theatre_response.dart';

part 'user_response.g.dart';

abstract class LocationResponse implements Built<LocationResponse, LocationResponseBuilder> {
   @BuiltValueField(wireName: 'coordinates')
  BuiltList<double>? get coordinates;

  double? get longitude => coordinates.isNullOrEmpty ? null : coordinates![0];

  double? get latitude => coordinates.isNullOrEmpty ? null : coordinates![1];

  LocationResponse._();

  factory LocationResponse([void Function(LocationResponseBuilder) updates]) =
      _$LocationResponse;

  static Serializer<LocationResponse> get serializer =>
      _$locationResponseSerializer;

  factory LocationResponse.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<LocationResponse>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this) as Map<String, Object?>;
}



abstract class UserResponse implements Built<UserResponse, UserResponseBuilder> {
  
  String get uid;

  String get email;

  String get phone_number;

  String get full_name;

  String get gender;

  String? get avatar;

  String get address;

  DateTime? get birthday;

  LocationResponse? get location;

  bool get is_completed;

  bool get is_active;

  String get role;

  TheatreResponse? get theatre;

   UserResponse._();

  factory UserResponse([void Function(UserResponseBuilder) updates]) =
      _$UserResponse;

  static Serializer<UserResponse> get serializer => _$userResponseSerializer;

  factory UserResponse.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<UserResponse>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this) as Map<String, Object?>;
}