import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

// ignore_for_file: prefer_single_quotes
part 'person_response.g.dart';

abstract class PersonResponse implements Built<PersonResponse, PersonResponseBuilder> {
  @BuiltValueField(wireName: 'is_active')
   bool? get isActive;

  @BuiltValueField(wireName: '_id')
   String get id;

   String get avatar;

   @BuiltValueField(wireName: 'full_name')
   String get fullName;

   DateTime get createdAt;

   DateTime get updatedAt;

   int? get v;

  factory PersonResponse.fromRawJson(String str) =>
      PersonResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

   PersonResponse._();

   factory PersonResponse([void Function(PersonResponseBuilder) updates]) =
   _$PersonResponse;

   static Serializer<PersonResponse> get serializer =>
       _$personResponseSerializer;

   factory PersonResponse.fromJson(Map<String, dynamic> json) =>
       serializers.deserializeWith<PersonResponse>(serializer, json)!;

   Map<String, Object?> toJson() =>
       serializers.serializeWith(serializer, this)! as Map<String, Object?>;

}