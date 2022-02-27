import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';
import 'user_response.dart';

// ignore_for_file: prefer_single_quotes

part 'theatre_response.g.dart';

abstract class TheatreResponse implements Built<TheatreResponse, TheatreResponseBuilder> {

  @BuiltValueField(wireName: 'location')
   LocationResponse get location;

  @BuiltValueField(wireName: 'is_active')
   bool get isActive;

  @BuiltValueField(wireName: 'rooms')
   BuiltList<String> get rooms;

  @BuiltValueField(wireName: '_id')
   String get id;

  @BuiltValueField(wireName: 'name')
   String get name;

  @BuiltValueField(wireName: 'address')
   String get address;

  @BuiltValueField(wireName: 'phone_number')
   String get phoneNumber;

  @BuiltValueField(wireName: 'description')
   String get description;

  @BuiltValueField(wireName: 'email')
   String? get email;

  @BuiltValueField(wireName: 'opening_hours')
   String get openingHours;

  @BuiltValueField(wireName: 'room_summary')
   String get roomSummary;

   DateTime get createdAt;

   DateTime get updatedAt;

   String get cover;

   String get thumbnail;

  factory TheatreResponse.fromRawJson(String? str) {
    return TheatreResponse.fromJson(jsonDecode(str ?? '{}'));
  }


  TheatreResponse._();

  factory TheatreResponse([void Function(TheatreResponseBuilder) updates]) = _$TheatreResponse;

  static Serializer<TheatreResponse> get serializer => _$theatreResponseSerializer;

  factory TheatreResponse.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith<TheatreResponse>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}