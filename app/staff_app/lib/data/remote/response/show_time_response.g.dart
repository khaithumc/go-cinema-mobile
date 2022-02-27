// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_time_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShowTimeResponse> _$showTimeResponseSerializer =
    new _$ShowTimeResponseSerializer();
Serializer<ShowTimeResponseMovieResponse>
    _$showTimeResponseMovieResponseSerializer =
    new _$ShowTimeResponseMovieResponseSerializer();

class _$ShowTimeResponseSerializer
    implements StructuredSerializer<ShowTimeResponse> {
  @override
  final Iterable<Type> types = const [ShowTimeResponse, _$ShowTimeResponse];
  @override
  final String wireName = 'ShowTimeResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ShowTimeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'theatre',
      serializers.serialize(object.theatre,
          specifiedType: const FullType(String)),
      'room',
      serializers.serialize(object.room, specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(DateTime)),
      'start_time',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(DateTime)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.movie;
    if (value != null) {
      result
        ..add('movie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ShowTimeResponseMovieResponse)));
    }
    return result;
  }

  @override
  ShowTimeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShowTimeResponseBuilder();

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
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'movie':
          result.movie.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ShowTimeResponseMovieResponse))!
              as ShowTimeResponseMovieResponse);
          break;
        case 'theatre':
          result.theatre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ShowTimeResponseMovieResponseSerializer
    implements StructuredSerializer<ShowTimeResponseMovieResponse> {
  @override
  final Iterable<Type> types = const [
    ShowTimeResponseMovieResponse,
    _$ShowTimeResponseMovieResponse
  ];
  @override
  final String wireName = 'ShowTimeResponseMovieResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ShowTimeResponseMovieResponse object,
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
  ShowTimeResponseMovieResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShowTimeResponseMovieResponseBuilder();

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

class _$ShowTimeResponse extends ShowTimeResponse {
  @override
  final bool? isActive;
  @override
  final String id;
  @override
  final ShowTimeResponseMovieResponse? movie;
  @override
  final String theatre;
  @override
  final String room;
  @override
  final DateTime endTime;
  @override
  final DateTime startTime;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$ShowTimeResponse(
          [void Function(ShowTimeResponseBuilder)? updates]) =>
      (new ShowTimeResponseBuilder()..update(updates)).build();

  _$ShowTimeResponse._(
      {this.isActive,
      required this.id,
      this.movie,
      required this.theatre,
      required this.room,
      required this.endTime,
      required this.startTime,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ShowTimeResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        theatre, 'ShowTimeResponse', 'theatre');
    BuiltValueNullFieldError.checkNotNull(room, 'ShowTimeResponse', 'room');
    BuiltValueNullFieldError.checkNotNull(
        endTime, 'ShowTimeResponse', 'endTime');
    BuiltValueNullFieldError.checkNotNull(
        startTime, 'ShowTimeResponse', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'ShowTimeResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'ShowTimeResponse', 'updatedAt');
  }

  @override
  ShowTimeResponse rebuild(void Function(ShowTimeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowTimeResponseBuilder toBuilder() =>
      new ShowTimeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowTimeResponse &&
        isActive == other.isActive &&
        id == other.id &&
        movie == other.movie &&
        theatre == other.theatre &&
        room == other.room &&
        endTime == other.endTime &&
        startTime == other.startTime &&
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
                            $jc($jc($jc(0, isActive.hashCode), id.hashCode),
                                movie.hashCode),
                            theatre.hashCode),
                        room.hashCode),
                    endTime.hashCode),
                startTime.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowTimeResponse')
          ..add('isActive', isActive)
          ..add('id', id)
          ..add('movie', movie)
          ..add('theatre', theatre)
          ..add('room', room)
          ..add('endTime', endTime)
          ..add('startTime', startTime)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ShowTimeResponseBuilder
    implements Builder<ShowTimeResponse, ShowTimeResponseBuilder> {
  _$ShowTimeResponse? _$v;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ShowTimeResponseMovieResponseBuilder? _movie;
  ShowTimeResponseMovieResponseBuilder get movie =>
      _$this._movie ??= new ShowTimeResponseMovieResponseBuilder();
  set movie(ShowTimeResponseMovieResponseBuilder? movie) =>
      _$this._movie = movie;

  String? _theatre;
  String? get theatre => _$this._theatre;
  set theatre(String? theatre) => _$this._theatre = theatre;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ShowTimeResponseBuilder();

  ShowTimeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isActive = $v.isActive;
      _id = $v.id;
      _movie = $v.movie?.toBuilder();
      _theatre = $v.theatre;
      _room = $v.room;
      _endTime = $v.endTime;
      _startTime = $v.startTime;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowTimeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowTimeResponse;
  }

  @override
  void update(void Function(ShowTimeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowTimeResponse build() {
    _$ShowTimeResponse _$result;
    try {
      _$result = _$v ??
          new _$ShowTimeResponse._(
              isActive: isActive,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'ShowTimeResponse', 'id'),
              movie: _movie?.build(),
              theatre: BuiltValueNullFieldError.checkNotNull(
                  theatre, 'ShowTimeResponse', 'theatre'),
              room: BuiltValueNullFieldError.checkNotNull(
                  room, 'ShowTimeResponse', 'room'),
              endTime: BuiltValueNullFieldError.checkNotNull(
                  endTime, 'ShowTimeResponse', 'endTime'),
              startTime: BuiltValueNullFieldError.checkNotNull(
                  startTime, 'ShowTimeResponse', 'startTime'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'ShowTimeResponse', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'ShowTimeResponse', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movie';
        _movie?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShowTimeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ShowTimeResponseMovieResponse extends ShowTimeResponseMovieResponse {
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

  factory _$ShowTimeResponseMovieResponse(
          [void Function(ShowTimeResponseMovieResponseBuilder)? updates]) =>
      (new ShowTimeResponseMovieResponseBuilder()..update(updates)).build();

  _$ShowTimeResponseMovieResponse._(
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
        isActive, 'ShowTimeResponseMovieResponse', 'isActive');
    BuiltValueNullFieldError.checkNotNull(
        ageType, 'ShowTimeResponseMovieResponse', 'ageType');
    BuiltValueNullFieldError.checkNotNull(
        actors, 'ShowTimeResponseMovieResponse', 'actors');
    BuiltValueNullFieldError.checkNotNull(
        directors, 'ShowTimeResponseMovieResponse', 'directors');
    BuiltValueNullFieldError.checkNotNull(
        id, 'ShowTimeResponseMovieResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        rateStar, 'ShowTimeResponseMovieResponse', 'rateStar');
    BuiltValueNullFieldError.checkNotNull(
        totalRate, 'ShowTimeResponseMovieResponse', 'totalRate');
    BuiltValueNullFieldError.checkNotNull(
        totalFavorite, 'ShowTimeResponseMovieResponse', 'totalFavorite');
    BuiltValueNullFieldError.checkNotNull(
        title, 'ShowTimeResponseMovieResponse', 'title');
    BuiltValueNullFieldError.checkNotNull(
        releasedDate, 'ShowTimeResponseMovieResponse', 'releasedDate');
    BuiltValueNullFieldError.checkNotNull(
        duration, 'ShowTimeResponseMovieResponse', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, 'ShowTimeResponseMovieResponse', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'ShowTimeResponseMovieResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'ShowTimeResponseMovieResponse', 'updatedAt');
  }

  @override
  ShowTimeResponseMovieResponse rebuild(
          void Function(ShowTimeResponseMovieResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowTimeResponseMovieResponseBuilder toBuilder() =>
      new ShowTimeResponseMovieResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowTimeResponseMovieResponse &&
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
    return (newBuiltValueToStringHelper('ShowTimeResponseMovieResponse')
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

class ShowTimeResponseMovieResponseBuilder
    implements
        Builder<ShowTimeResponseMovieResponse,
            ShowTimeResponseMovieResponseBuilder> {
  _$ShowTimeResponseMovieResponse? _$v;

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

  ShowTimeResponseMovieResponseBuilder();

  ShowTimeResponseMovieResponseBuilder get _$this {
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
  void replace(ShowTimeResponseMovieResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowTimeResponseMovieResponse;
  }

  @override
  void update(void Function(ShowTimeResponseMovieResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowTimeResponseMovieResponse build() {
    _$ShowTimeResponseMovieResponse _$result;
    try {
      _$result = _$v ??
          new _$ShowTimeResponseMovieResponse._(
              isActive: BuiltValueNullFieldError.checkNotNull(
                  isActive, 'ShowTimeResponseMovieResponse', 'isActive'),
              ageType: BuiltValueNullFieldError.checkNotNull(
                  ageType, 'ShowTimeResponseMovieResponse', 'ageType'),
              actors: actors.build(),
              directors: directors.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'ShowTimeResponseMovieResponse', 'id'),
              rateStar: BuiltValueNullFieldError.checkNotNull(
                  rateStar, 'ShowTimeResponseMovieResponse', 'rateStar'),
              totalRate: BuiltValueNullFieldError.checkNotNull(
                  totalRate, 'ShowTimeResponseMovieResponse', 'totalRate'),
              totalFavorite: BuiltValueNullFieldError.checkNotNull(
                  totalFavorite, 'ShowTimeResponseMovieResponse', 'totalFavorite'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'ShowTimeResponseMovieResponse', 'title'),
              trailerVideoUrl: trailerVideoUrl,
              posterUrl: posterUrl,
              overview: overview,
              releasedDate: BuiltValueNullFieldError.checkNotNull(
                  releasedDate, 'ShowTimeResponseMovieResponse', 'releasedDate'),
              duration: BuiltValueNullFieldError.checkNotNull(duration, 'ShowTimeResponseMovieResponse', 'duration'),
              originalLanguage: BuiltValueNullFieldError.checkNotNull(originalLanguage, 'ShowTimeResponseMovieResponse', 'originalLanguage'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, 'ShowTimeResponseMovieResponse', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, 'ShowTimeResponseMovieResponse', 'updatedAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actors';
        actors.build();
        _$failedField = 'directors';
        directors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShowTimeResponseMovieResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
