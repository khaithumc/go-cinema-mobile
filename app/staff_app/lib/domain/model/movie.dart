import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

import 'age_type.dart';
import 'category.dart';
import 'person.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
   String get id;

   bool? get isActive;

   String? get title;

   String? get trailerVideoUrl;

   String? get posterUrl;

   String? get overview;

   DateTime? get releasedDate;

   int get duration;

   String get originalLanguage;

   DateTime get createdAt;

   DateTime? get updatedAt;

   AgeType get ageType;

   List<Person>? get actors;

   List<Person>? get directors;

   List<Category>? get categories;

   double? get rateStar;

   int? get totalFavorite;

   int? get totalRate;

   Movie._();

   factory Movie([void Function(MovieBuilder) updates]) = _$Movie;
}