// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShowTime extends ShowTime {
  @override
  final bool? isActive;
  @override
  final String id;
  @override
  final Movie? movie;
  @override
  final String? movieId;
  @override
  final String theatreId;
  @override
  final String room;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Theatre? theatre;

  factory _$ShowTime([void Function(ShowTimeBuilder)? updates]) =>
      (new ShowTimeBuilder()..update(updates)).build();

  _$ShowTime._(
      {this.isActive,
      required this.id,
      this.movie,
      this.movieId,
      required this.theatreId,
      required this.room,
      required this.startTime,
      required this.endTime,
      required this.createdAt,
      required this.updatedAt,
      this.theatre})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ShowTime', 'id');
    BuiltValueNullFieldError.checkNotNull(theatreId, 'ShowTime', 'theatreId');
    BuiltValueNullFieldError.checkNotNull(room, 'ShowTime', 'room');
    BuiltValueNullFieldError.checkNotNull(startTime, 'ShowTime', 'startTime');
    BuiltValueNullFieldError.checkNotNull(endTime, 'ShowTime', 'endTime');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'ShowTime', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'ShowTime', 'updatedAt');
  }

  @override
  ShowTime rebuild(void Function(ShowTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowTimeBuilder toBuilder() => new ShowTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowTime &&
        isActive == other.isActive &&
        id == other.id &&
        movie == other.movie &&
        movieId == other.movieId &&
        theatreId == other.theatreId &&
        room == other.room &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        theatre == other.theatre;
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
                                        $jc($jc(0, isActive.hashCode),
                                            id.hashCode),
                                        movie.hashCode),
                                    movieId.hashCode),
                                theatreId.hashCode),
                            room.hashCode),
                        startTime.hashCode),
                    endTime.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        theatre.hashCode));
  }
}

class ShowTimeBuilder implements Builder<ShowTime, ShowTimeBuilder> {
  _$ShowTime? _$v;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  MovieBuilder? _movie;
  MovieBuilder get movie => _$this._movie ??= new MovieBuilder();
  set movie(MovieBuilder? movie) => _$this._movie = movie;

  String? _movieId;
  String? get movieId => _$this._movieId;
  set movieId(String? movieId) => _$this._movieId = movieId;

  String? _theatreId;
  String? get theatreId => _$this._theatreId;
  set theatreId(String? theatreId) => _$this._theatreId = theatreId;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TheatreBuilder? _theatre;
  TheatreBuilder get theatre => _$this._theatre ??= new TheatreBuilder();
  set theatre(TheatreBuilder? theatre) => _$this._theatre = theatre;

  ShowTimeBuilder();

  ShowTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isActive = $v.isActive;
      _id = $v.id;
      _movie = $v.movie?.toBuilder();
      _movieId = $v.movieId;
      _theatreId = $v.theatreId;
      _room = $v.room;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _theatre = $v.theatre?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowTime;
  }

  @override
  void update(void Function(ShowTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowTime build() {
    _$ShowTime _$result;
    try {
      _$result = _$v ??
          new _$ShowTime._(
              isActive: isActive,
              id: BuiltValueNullFieldError.checkNotNull(id, 'ShowTime', 'id'),
              movie: _movie?.build(),
              movieId: movieId,
              theatreId: BuiltValueNullFieldError.checkNotNull(
                  theatreId, 'ShowTime', 'theatreId'),
              room: BuiltValueNullFieldError.checkNotNull(
                  room, 'ShowTime', 'room'),
              startTime: BuiltValueNullFieldError.checkNotNull(
                  startTime, 'ShowTime', 'startTime'),
              endTime: BuiltValueNullFieldError.checkNotNull(
                  endTime, 'ShowTime', 'endTime'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'ShowTime', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'ShowTime', 'updatedAt'),
              theatre: _theatre?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movie';
        _movie?.build();

        _$failedField = 'theatre';
        _theatre?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ShowTime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
