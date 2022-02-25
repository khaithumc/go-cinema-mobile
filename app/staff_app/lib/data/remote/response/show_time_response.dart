// ignore_for_file: prefer_single_quotes

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'show_time_response.g.dart';

abstract class ShowTimeResponse implements Built<ShowTimeResponse, ShowTimeResponseBuilder> {

   @BuiltValueField(wireName: 'is_active')
   bool get isActive;

   @BuiltValueField(wireName: '_id')
   String get id;

   ShowTimeResponseMovieResponse get movie;

   String get theatre;

   String get room;

   @BuiltValueField(wireName: 'end_time')
   DateTime get endTime;

   @BuiltValueField(wireName: 'start_time')
   DateTime get startTime;

   DateTime get createdAt;

   DateTime get updatedAt;

   ShowTimeResponse._();

   factory ShowTimeResponse([void Function(ShowTimeResponseBuilder) updates]) =
   _$ShowTimeResponse;

   static Serializer<ShowTimeResponse> get serializer =>
       _$showTimeResponseSerializer;

   factory ShowTimeResponse.fromJson(Map<String, dynamic> json) =>
       serializers.deserializeWith<ShowTimeResponse>(serializer, json)!;

   Map<String, Object?> toJson() =>
       serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}

abstract class ShowTimeResponseMovieResponse implements Built<ShowTimeResponseMovieResponse, ShowTimeResponseMovieResponseBuilder> {

   @BuiltValueField(wireName: 'is_active')
   bool get isActive;

   @BuiltValueField(wireName: 'age_type')
   String get ageType;

   BuiltList<String> get actors;

   BuiltList<String> get directors;

   @BuiltValueField(wireName: '_id')
   String get id;

   @BuiltValueField(wireName: 'rate_star')
   double get rateStar;

   @BuiltValueField(wireName: 'total_rate')
   int get totalRate;

   @BuiltValueField(wireName: 'total_favorite')
   int get totalFavorite;

   String get title;

   @BuiltValueField(wireName: 'trailer_video_url')
   String? get trailerVideoUrl;

   @BuiltValueField(wireName: 'poster_url')
   String? get posterUrl;

   String? get overview;

   @BuiltValueField(wireName: 'released_date')
   DateTime get releasedDate;

   int get duration;

   @BuiltValueField(wireName: 'original_language')
   String get originalLanguage;

   DateTime get createdAt;

   DateTime get updatedAt;

   ShowTimeResponseMovieResponse._();

  factory ShowTimeResponseMovieResponse([void Function(ShowTimeResponseMovieResponseBuilder) updates]) = _$ShowTimeResponseMovieResponse;

  static Serializer<ShowTimeResponseMovieResponse> get serializer => _$showTimeResponseMovieResponseSerializer;

  factory ShowTimeResponseMovieResponse.fromJson(Map<String, dynamic> json) =>
   serializers.deserializeWith<ShowTimeResponseMovieResponse>(serializer, json)!;

   Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}