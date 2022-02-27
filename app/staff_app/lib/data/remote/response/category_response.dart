import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'category_response.g.dart';

abstract class CategoryResponse implements Built<CategoryResponse, CategoryResponseBuilder> {
  @BuiltValueField(wireName: '_id')
   String? get id;

   String get name;

   DateTime get createdAt;

   DateTime get updatedAt;

   @BuiltValueField(wireName: 'category_id')
   String? get categoryId;

  factory CategoryResponse.fromRawJson(String str) =>
      CategoryResponse.fromJson(json.decode(str));

   CategoryResponse._();

   factory CategoryResponse([void Function(CategoryResponseBuilder) updates]) =
   _$CategoryResponse;

   static Serializer<CategoryResponse> get serializer =>
       _$categoryResponseSerializer;

   factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
       serializers.deserializeWith<CategoryResponse>(serializer, json)!;

   Map<String, Object?> toJson() =>
       serializers.serializeWith(serializer, this)! as Map<String, Object?>;

}