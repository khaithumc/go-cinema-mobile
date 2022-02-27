// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchMovieResponse> _$searchMovieResponseSerializer =
    new _$SearchMovieResponseSerializer();

class _$SearchMovieResponseSerializer
    implements StructuredSerializer<SearchMovieResponse> {
  @override
  final Iterable<Type> types = const [
    SearchMovieResponse,
    _$SearchMovieResponse
  ];
  @override
  final String wireName = 'SearchMovieResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchMovieResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'is_active',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
      'age_type',
      serializers.serialize(object.ageType,
          specifiedType: const FullType(String)),
      'actors',
      serializers.serialize(object.actors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'directors',
      serializers.serialize(object.directors,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
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
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'released_date',
      serializers.serialize(object.releasedDate,
          specifiedType: const FullType(DateTime)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
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
    return result;
  }

  @override
  SearchMovieResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchMovieResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'age_type':
          result.ageType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actors':
          result.actors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'directors':
          result.directors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
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
              specifiedType: const FullType(String)) as String;
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
              specifiedType: const FullType(DateTime)) as DateTime;
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
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchMovieResponse extends SearchMovieResponse {
  @override
  final bool isActive;
  @override
  final String ageType;
  @override
  final BuiltList<String> actors;
  @override
  final BuiltList<String> directors;
  @override
  final String id;
  @override
  final double rateStar;
  @override
  final int totalRate;
  @override
  final int totalFavorite;
  @override
  final String title;
  @override
  final String? trailerVideoUrl;
  @override
  final String? posterUrl;
  @override
  final String? overview;
  @override
  final DateTime releasedDate;
  @override
  final int duration;
  @override
  final String originalLanguage;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$SearchMovieResponse(
          [void Function(SearchMovieResponseBuilder)? updates]) =>
      (new SearchMovieResponseBuilder()..update(updates)).build();

  _$SearchMovieResponse._(
      {required this.isActive,
      required this.ageType,
      required this.actors,
      required this.directors,
      required this.id,
      required this.rateStar,
      required this.totalRate,
      required this.totalFavorite,
      required this.title,
      this.trailerVideoUrl,
      this.posterUrl,
      this.overview,
      required this.releasedDate,
      required this.duration,
      required this.originalLanguage,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isActive, 'SearchMovieResponse', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        ageType, 'SearchMovieResponse', 'ageType');
    BuiltValueNullFieldError.checkNotNull(
        actors, 'SearchMovieResponse', 'actors');
    BuiltValueNullFieldError.checkNotNull(
        directors, 'SearchMovieResponse', 'directors');
    BuiltValueNullFieldError.checkNotNull(id, 'SearchMovieResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        rateStar, 'SearchMovieResponse', 'rateStar');
    BuiltValueNullFieldError.checkNotNull(
        totalRate, 'SearchMovieResponse', 'totalRate');
    BuiltValueNullFieldError.checkNotNull(
        totalFavorite, 'SearchMovieResponse', 'totalFavorite');
    BuiltValueNullFieldError.checkNotNull(
        title, 'SearchMovieResponse', 'title');
    BuiltValueNullFieldError.checkNotNull(
        releasedDate, 'SearchMovieResponse', 'releasedDate');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'SearchMovieResponse', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, 'SearchMovieResponse', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'SearchMovieResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'SearchMovieResponse', 'updatedAt');
  }

  @override
  SearchMovieResponse rebuild(
          void Function(SearchMovieResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMovieResponseBuilder toBuilder() =>
      new SearchMovieResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMovieResponse &&
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
        updatedAt == other.updatedAt;
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
                                                                        0,
                                                                        isActive
                                                                            .hashCode),
                                                                    ageType
                                                                        .hashCode),
                                                                actors
                                                                    .hashCode),
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
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchMovieResponse')
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
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SearchMovieResponseBuilder
    implements Builder<SearchMovieResponse, SearchMovieResponseBuilder> {
  _$SearchMovieResponse? _$v;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _ageType;
  String? get ageType => _$this._ageType;
  set ageType(String? ageType) => _$this._ageType = ageType;

  ListBuilder<String>? _actors;
  ListBuilder<String> get actors =>
      _$this._actors ??= new ListBuilder<String>();
  set actors(ListBuilder<String>? actors) => _$this._actors = actors;

  ListBuilder<String>? _directors;
  ListBuilder<String> get directors =>
      _$this._directors ??= new ListBuilder<String>();
  set directors(ListBuilder<String>? directors) =>
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

  SearchMovieResponseBuilder();

  SearchMovieResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isActive = $v.isActive;
      _ageType = $v.ageType;
      _actors = $v.actors.toBuilder();
      _directors = $v.directors.toBuilder();
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMovieResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchMovieResponse;
  }

  @override
  void update(void Function(SearchMovieResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMovieResponse build() {
    _$SearchMovieResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchMovieResponse._(
              isActive: BuiltValueNullFieldError.checkNotNull(
                  isActive, 'SearchMovieResponse', 'isActive'),
              ageType: BuiltValueNullFieldError.checkNotNull(
                  ageType, 'SearchMovieResponse', 'ageType'),
              actors: actors.build(),
              directors: directors.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'SearchMovieResponse', 'id'),
              rateStar: BuiltValueNullFieldError.checkNotNull(
                  rateStar, 'SearchMovieResponse', 'rateStar'),
              totalRate: BuiltValueNullFieldError.checkNotNull(
                  totalRate, 'SearchMovieResponse', 'totalRate'),
              totalFavorite: BuiltValueNullFieldError.checkNotNull(
                  totalFavorite, 'SearchMovieResponse', 'totalFavorite'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'SearchMovieResponse', 'title'),
              trailerVideoUrl: trailerVideoUrl,
              posterUrl: posterUrl,
              overview: overview,
              releasedDate: BuiltValueNullFieldError.checkNotNull(
                  releasedDate, 'SearchMovieResponse', 'releasedDate'),
              duration:
                  BuiltValueNullFieldError.checkNotNull(duration, 'SearchMovieResponse', 'duration'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(originalLanguage, 'SearchMovieResponse', 'originalLanguage'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, 'SearchMovieResponse', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, 'SearchMovieResponse', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actors';
        actors.build();
        _$failedField = 'directors';
        directors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchMovieResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
