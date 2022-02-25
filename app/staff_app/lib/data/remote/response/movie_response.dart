import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';
import 'person_response.dart';

import 'category_response.dart';
// ignore_for_file: prefer_single_quotes

part 'movie_response.g.dart';

abstract class MovieResponse implements Built<MovieResponse, MovieResponseBuilder> {

  @BuiltValueField(wireName: 'is_active')
   bool? get isActive;

  @BuiltValueField(wireName: 'age_type')
   String get ageType;

   BuiltList<PersonResponse>? get actors;

   BuiltList<PersonResponse>? get directors;

  @BuiltValueField(wireName: '_id')
   String get id;

  @BuiltValueField(wireName: 'rate_star')
   double get rateStar;

  @BuiltValueField(wireName: 'total_rate')
   int get totalRate;

  @BuiltValueField(wireName: 'total_favorite')
   int get totalFavorite;

   String? get title;

  @BuiltValueField(wireName: 'trailer_video_url')
   String? get trailerVideoUrl;

  @BuiltValueField(wireName: 'poster_url')
   String? get posterUrl;

   String? get overview;

  @BuiltValueField(wireName: 'released_date')
   DateTime? get releasedDate;

   int get duration;

  @BuiltValueField(wireName: 'original_language')
   String get originalLanguage;

   DateTime get createdAt;

   DateTime? get updatedAt;

   int get v;

   List<CategoryResponse>? get categories;

  @BuiltValueField(wireName: 'movie_response_id')
   String get movieResponseId;

  factory MovieResponse.fromRawJson(String str) =>
      MovieResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

   MovieResponse._();

   factory MovieResponse([void Function(MovieResponseBuilder) updates]) =
   _$MovieResponse;

   static Serializer<MovieResponse> get serializer =>
       _$movieResponseSerializer;

   factory MovieResponse.fromJson(Map<String, dynamic> json) =>
       serializers.deserializeWith<MovieResponse>(serializer, json)!;

   Map<String, Object?> toJson() =>
       serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}