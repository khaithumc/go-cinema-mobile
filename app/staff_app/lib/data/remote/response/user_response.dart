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

   String? get type;

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

  @BuiltValueField(wireName: '_id')
  String get id;



  @BuiltValueField(wireName: 'uid')
  String get uid;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'phone_number')
  String get phone_number;

  @BuiltValueField(wireName: 'full_name')
  String get full_name;

  @BuiltValue(wireName: 'gender')
  String get gender;

  @BuiltValueField(wireName: 'avatar')
  String? get avatar;

  @BuiltValueField(wireName: 'address')
  String get address;

  @BuiltValueField(wireName: 'birthday')
  DateTime? get birthday;

  @BuiltValueField(wireName: 'location')
  LocationResponse? get location;

  @BuiltValueField(wireName: 'is_completed')
  bool get is_completed;

  @BuiltValueField(wireName: 'is_active')
  bool get is_active;

  @BuiltValueField(wireName: 'role')
  String get role;

  @BuiltValueField(wireName: 'theatre')
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