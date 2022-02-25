// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieResponse> _$movieResponseSerializer =
    new _$MovieResponseSerializer();

class _$MovieResponseSerializer implements StructuredSerializer<MovieResponse> {
  @override
  final Iterable<Type> types = const [MovieResponse, _$MovieResponse];
  @override
  final String wireName = 'MovieResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'age_type',
      serializers.serialize(object.ageType,
          specifiedType: const FullType(String)),
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'rate_star',
      serializers.serialize(object.rateStar,
          specifiedType: const FullType(double)),
      'total_rate',
      serializers.serialize(object.totalRate,
          specifiedType: const FullType(int)),
      'total_favorite',
      serializers.serialize(object.totalFavorite,
          specifiedType: const FullType(int)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'v',
      serializers.serialize(object.v, specifiedType: const FullType(int)),
      'movie_response_id',
      serializers.serialize(object.movieResponseId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.actors;
    if (value != null) {
      result
        ..add('actors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PersonResponse)])));
    }
    value = object.directors;
    if (value != null) {
      result
        ..add('directors')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PersonResponse)])));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trailerVideoUrl;
    if (value != null) {
      result
        ..add('trailer_video_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posterUrl;
    if (value != null) {
      result
        ..add('poster_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.releasedDate;
    if (value != null) {
      result
        ..add('released_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                List, const [const FullType(CategoryResponse)])));
    }
    return result;
  }

  @override
  MovieResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age_type':
          result.ageType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actors':
          result.actors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PersonResponse)]))!
              as BuiltList<Object?>);
          break;
        case 'directors':
          result.directors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PersonResponse)]))!
              as BuiltList<Object?>);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate_star':
          result.rateStar = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total_rate':
          result.totalRate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_favorite':
          result.totalFavorite = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'trailer_video_url':
          result.trailerVideoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'poster_url':
          result.posterUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'released_date':
          result.releasedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categories':
          result.categories = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(CategoryResponse)]))
              as List<CategoryResponse>?;
          break;
        case 'movie_response_id':
          result.movieResponseId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieResponse extends MovieResponse {
  @override
  final bool? isActive;
  @override
  final String ageType;
  @override
  final BuiltList<PersonResponse>? actors;
  @override
  final BuiltList<PersonResponse>? directors;
  @override
  final String id;
  @override
  final double rateStar;
  @override
  final int totalRate;
  @override
  final int totalFavorite;
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
  final int duration;
  @override
  final String originalLanguage;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int v;
  @override
  final List<CategoryResponse>? categories;
  @override
  final String movieResponseId;

  factory _$MovieResponse([void Function(MovieResponseBuilder)? updates]) =>
      (new MovieResponseBuilder()..update(updates)).build();

  _$MovieResponse._(
      {this.isActive,
      required this.ageType,
      this.actors,
      this.directors,
      required this.id,
      required this.rateStar,
      required this.totalRate,
      required this.totalFavorite,
      this.title,
      this.trailerVideoUrl,
      this.posterUrl,
      this.overview,
      this.releasedDate,
      required this.duration,
      required this.originalLanguage,
      required this.createdAt,
      this.updatedAt,
      required this.v,
      this.categories,
      required this.movieResponseId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ageType, 'MovieResponse', 'ageType');
    BuiltValueNullFieldError.checkNotNull(id, 'MovieResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        rateStar, 'MovieResponse', 'rateStar');
    BuiltValueNullFieldError.checkNotNull(
        totalRate, 'MovieResponse', 'totalRate');
    BuiltValueNullFieldError.checkNotNull(
        totalFavorite, 'MovieResponse', 'totalFavorite');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'MovieResponse', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, 'MovieResponse', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'MovieResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(v, 'MovieResponse', 'v');
    BuiltValueNullFieldError.checkNotNull(
        movieResponseId, 'MovieResponse', 'movieResponseId');
  }

  @override
  MovieResponse rebuild(void Function(MovieResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieResponseBuilder toBuilder() => new MovieResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieResponse &&
        isActive == other.isActive &&
        ageType == other.ageType &&
        actors == other.actors &&
        directors == other.directors &&
        id == other.id &&
        rateStar == other.rateStar &&
        totalRate == other.totalRate &&
        totalFavorite == other.totalFavorite &&
        title == other.title &&
        trailerVideoUrl == other.trailerVideoUrl &&
        posterUrl == other.posterUrl &&
        overview == other.overview &&
        releasedDate == other.releasedDate &&
        duration == other.duration &&
        originalLanguage == other.originalLanguage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        v == other.v &&
        categories == other.categories &&
        movieResponseId == other.movieResponseId;
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
                                                                            $jc($jc(0, isActive.hashCode),
                                                                                ageType.hashCode),
                                                                            actors.hashCode),
                                                                        directors.hashCode),
                                                                    id.hashCode),
                                                                rateStar.hashCode),
                                                            totalRate.hashCode),
                                                        totalFavorite.hashCode),
                                                    title.hashCode),
                                                trailerVideoUrl.hashCode),
                                            posterUrl.hashCode),
                                        overview.hashCode),
                                    releasedDate.hashCode),
                                duration.hashCode),
                            originalLanguage.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                v.hashCode),
            categories.hashCode),
        movieResponseId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieResponse')
          ..add('isActive', isActive)
          ..add('ageType', ageType)
          ..add('actors', actors)
          ..add('directors', directors)
          ..add('id', id)
          ..add('rateStar', rateStar)
          ..add('totalRate', totalRate)
          ..add('totalFavorite', totalFavorite)
          ..add('title', title)
          ..add('trailerVideoUrl', trailerVideoUrl)
          ..add('posterUrl', posterUrl)
          ..add('overview', overview)
          ..add('releasedDate', releasedDate)
          ..add('duration', duration)
          ..add('originalLanguage', originalLanguage)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('v', v)
          ..add('categories', categories)
          ..add('movieResponseId', movieResponseId))
        .toString();
  }
}

class MovieResponseBuilder
    implements Builder<MovieResponse, MovieResponseBuilder> {
  _$MovieResponse? _$v;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _ageType;
  String? get ageType => _$this._ageType;
  set ageType(String? ageType) => _$this._ageType = ageType;

  ListBuilder<PersonResponse>? _actors;
  ListBuilder<PersonResponse> get actors =>
      _$this._actors ??= new ListBuilder<PersonResponse>();
  set actors(ListBuilder<PersonResponse>? actors) => _$this._actors = actors;

  ListBuilder<PersonResponse>? _directors;
  ListBuilder<PersonResponse> get directors =>
      _$this._directors ??= new ListBuilder<PersonResponse>();
  set directors(ListBuilder<PersonResponse>? directors) =>
      _$this._directors = directors;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _rateStar;
  double? get rateStar => _$this._rateStar;
  set rateStar(double? rateStar) => _$this._rateStar = rateStar;

  int? _totalRate;
  int? get totalRate => _$this._totalRate;
  set totalRate(int? totalRate) => _$this._totalRate = totalRate;

  int? _totalFavorite;
  int? get totalFavorite => _$this._totalFavorite;
  set totalFavorite(int? totalFavorite) =>
      _$this._totalFavorite = totalFavorite;

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

  int? _v;
  int? get v => _$this._v;
  set v(int? v) => _$this._v = v;

  List<CategoryResponse>? _categories;
  List<CategoryResponse>? get categories => _$this._categories;
  set categories(List<CategoryResponse>? categories) =>
      _$this._categories = categories;

  String? _movieResponseId;
  String? get movieResponseId => _$this._movieResponseId;
  set movieResponseId(String? movieResponseId) =>
      _$this._movieResponseId = movieResponseId;

  MovieResponseBuilder();

  MovieResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isActive = $v.isActive;
      _ageType = $v.ageType;
      _actors = $v.actors?.toBuilder();
      _directors = $v.directors?.toBuilder();
      _id = $v.id;
      _rateStar = $v.rateStar;
      _totalRate = $v.totalRate;
      _totalFavorite = $v.totalFavorite;
      _title = $v.title;
      _trailerVideoUrl = $v.trailerVideoUrl;
      _posterUrl = $v.posterUrl;
      _overview = $v.overview;
      _releasedDate = $v.releasedDate;
      _duration = $v.duration;
      _originalLanguage = $v.originalLanguage;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _v = $v.v;
      _categories = $v.categories;
      _movieResponseId = $v.movieResponseId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieResponse;
  }

  @override
  void update(void Function(MovieResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieResponse build() {
    _$MovieResponse _$result;
    try {
      _$result = _$v ??
          new _$MovieResponse._(
              isActive: isActive,
              ageType: BuiltValueNullFieldError.checkNotNull(
                  ageType, 'MovieResponse', 'ageType'),
              actors: _actors?.build(),
              directors: _directors?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'MovieResponse', 'id'),
              rateStar: BuiltValueNullFieldError.checkNotNull(
                  rateStar, 'MovieResponse', 'rateStar'),
              totalRate: BuiltValueNullFieldError.checkNotNull(
                  totalRate, 'MovieResponse', 'totalRate'),
              totalFavorite: BuiltValueNullFieldError.checkNotNull(
                  totalFavorite, 'MovieResponse', 'totalFavorite'),
              title: title,
              trailerVideoUrl: trailerVideoUrl,
              posterUrl: posterUrl,
              overview: overview,
              releasedDate: releasedDate,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'MovieResponse', 'duration'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(
                  originalLanguage, 'MovieResponse', 'originalLanguage'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'MovieResponse', 'createdAt'),
              updatedAt: updatedAt,
              v: BuiltValueNullFieldError.checkNotNull(v, 'MovieResponse', 'v'),
              categories: categories,
              movieResponseId: BuiltValueNullFieldError.checkNotNull(
                  movieResponseId, 'MovieResponse', 'movieResponseId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actors';
        _actors?.build();
        _$failedField = 'directors';
        _directors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
