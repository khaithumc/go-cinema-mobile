import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'search_movie_response.g.dart';

abstract class SearchMovieResponse implements Built<SearchMovieResponse, SearchMovieResponseBuilder> {

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

  SearchMovieResponse._();

  factory SearchMovieResponse([void Function(SearchMovieResponseBuilder) updates]) = _$SearchMovieResponse;

  static Serializer<SearchMovieResponse> get serializer => _$searchMovieResponseSerializer;

  factory SearchMovieResponse.fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith<SearchMovieResponse>(serializer, json)!;

  Map<String, Object?> toJson() =>
      serializers.serializeWith(serializer, this)! as Map<String, Object?>;
}