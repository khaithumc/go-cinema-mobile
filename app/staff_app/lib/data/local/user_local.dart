import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

import '../serializers.dart';

part 'user_local.g.dart';

abstract class LocationLocal implements Built<LocationLocal, LocationLocalBuilder> {
  double get latitude;

  double get longitude;

  LocationLocal._();

  factory LocationLocal([void Function(LocationLocalBuilder) updates]) =
      _$LocationLocal;

  static Serializer<LocationLocal> get serializer => _$locationLocalSerializer;

  factory LocationLocal.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<LocationLocal>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this) as Map<String, Object?>;
}

abstract class UserLocal implements Built<UserLocal, UserLocalBuilder> {
  String get uid;

  String get email;

  String get phone_number;

  String get full_name;

  String get gender;

  String? get avatar;

  String get address;

  DateTime? get birthday;

  LocationLocal? get location;

  bool get is_completed;

  bool get is_active;

  String get role;

  String? get theatreResponseString;

  UserLocal._();

  factory UserLocal([void Function(UserLocalBuilder) updates]) = _$UserLocal;

  static Serializer<UserLocal> get serializer => _$userLocalSerializer;

  factory UserLocal.fromJson(Map<String, Object?> json) =>
      serializers.deserializeWith<UserLocal>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this) as Map<String, Object?>;
}