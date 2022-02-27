// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Movie extends Movie {
  @override
  final String? id;
  @override
  final bool? isActive;
  @override
  final String? title;
  @override
  final String? trailerVideoUrl;
  @override
  final String? posterUrl;
  @override
  final String? overview;
  @override
  final DateTime? releasedDate;
  @override
  final int? duration;
  @override
  final String? originalLanguage;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final AgeType? ageType;
  @override
  final List<Person>? actors;
  @override
  final List<Person>? directors;
  @override
  final List<Category>? categories;
  @override
  final double? rateStar;
  @override
  final int? totalFavorite;
  @override
  final int? totalRate;

  factory _$Movie([void Function(MovieBuilder)? updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.isActive,
      this.title,
      this.trailerVideoUrl,
      this.posterUrl,
      this.overview,
      this.releasedDate,
      this.duration,
      this.originalLanguage,
      this.createdAt,
      this.updatedAt,
      this.ageType,
      this.actors,
      this.directors,
      this.categories,
      this.rateStar,
      this.totalFavorite,
      this.totalRate})
      : super._();

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        isActive == other.isActive &&
        title == other.title &&
        trailerVideoUrl == other.trailerVideoUrl &&
        posterUrl == other.posterUrl &&
        overview == other.overview &&
        releasedDate == other.releasedDate &&
        duration == other.duration &&
        originalLanguage == other.originalLanguage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        ageType == other.ageType &&
        actors == other.actors &&
        directors == other.directors &&
        categories == other.categories &&
        rateStar == other.rateStar &&
        totalFavorite == other.totalFavorite &&
        totalRate == other.totalRate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        isActive
                                                                            .hashCode),
                                                                    title
                                                                        .hashCode),
                                                                trailerVideoUrl
                                                                    .hashCode),
                                                            posterUrl.hashCode),
                                                        overview.hashCode),
                                                    releasedDate.hashCode),
                                                duration.hashCode),
                                            originalLanguage.hashCode),
                                        createdAt.hashCode),
                                    updatedAt.hashCode),
                                ageType.hashCode),
                            actors.hashCode),
                        directors.hashCode),
                    categories.hashCode),
                rateStar.hashCode),
            totalFavorite.hashCode),
        totalRate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('isActive', isActive)
          ..add('title', title)
          ..add('trailerVideoUrl', trailerVideoUrl)
          ..add('posterUrl', posterUrl)
          ..add('overview', overview)
          ..add('releasedDate', releasedDate)
          ..add('duration', duration)
          ..add('originalLanguage', originalLanguage)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('ageType', ageType)
          ..add('actors', actors)
          ..add('directors', directors)
          ..add('categories', categories)
          ..add('rateStar', rateStar)
          ..add('totalFavorite', totalFavorite)
          ..add('totalRate', totalRate))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _trailerVideoUrl;
  String? get trailerVideoUrl => _$this._trailerVideoUrl;
  set trailerVideoUrl(String? trailerVideoUrl) =>
      _$this._trailerVideoUrl = trailerVideoUrl;

  String? _posterUrl;
  String? get posterUrl => _$this._posterUrl;
  set posterUrl(String? posterUrl) => _$this._posterUrl = posterUrl;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  DateTime? _releasedDate;
  DateTime? get releasedDate => _$this._releasedDate;
  set releasedDate(DateTime? releasedDate) =>
      _$this._releasedDate = releasedDate;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AgeType? _ageType;
  AgeType? get ageType => _$this._ageType;
  set ageType(AgeType? ageType) => _$this._ageType = ageType;

  List<Person>? _actors;
  List<Person>? get actors => _$this._actors;
  set actors(List<Person>? actors) => _$this._actors = actors;

  List<Person>? _directors;
  List<Person>? get directors => _$this._directors;
  set directors(List<Person>? directors) => _$this._directors = directors;

  List<Category>? _categories;
  List<Category>? get categories => _$this._categories;
  set categories(List<Category>? categories) => _$this._categories = categories;

  double? _rateStar;
  double? get rateStar => _$this._rateStar;
  set rateStar(double? rateStar) => _$this._rateStar = rateStar;

  int? _totalFavorite;
  int? get totalFavorite => _$this._totalFavorite;
  set totalFavorite(int? totalFavorite) =>
      _$this._totalFavorite = totalFavorite;

  int? _totalRate;
  int? get totalRate => _$this._totalRate;
  set totalRate(int? totalRate) => _$this._totalRate = totalRate;

  MovieBuilder();

  MovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isActive = $v.isActive;
      _title = $v.title;
      _trailerVideoUrl = $v.trailerVideoUrl;
      _posterUrl = $v.posterUrl;
      _overview = $v.overview;
      _releasedDate = $v.releasedDate;
      _duration = $v.duration;
      _originalLanguage = $v.originalLanguage;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _ageType = $v.ageType;
      _actors = $v.actors;
      _directors = $v.directors;
      _categories = $v.categories;
      _rateStar = $v.rateStar;
      _totalFavorite = $v.totalFavorite;
      _totalRate = $v.totalRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    final _$result = _$v ??
        new _$Movie._(
            id: id,
            isActive: isActive,
            title: title,
            trailerVideoUrl: trailerVideoUrl,
            posterUrl: posterUrl,
            overview: overview,
            releasedDate: releasedDate,
            duration: duration,
            originalLanguage: originalLanguage,
            createdAt: createdAt,
            updatedAt: updatedAt,
            ageType: ageType,
            actors: actors,
            directors: directors,
            categories: categories,
            rateStar: rateStar,
            totalFavorite: totalFavorite,
            totalRate: totalRate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
