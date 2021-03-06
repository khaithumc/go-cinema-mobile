// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seat_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeatResponse> _$seatResponseSerializer =
    new _$SeatResponseSerializer();

class _$SeatResponseSerializer implements StructuredSerializer<SeatResponse> {
  @override
  final Iterable<Type> types = const [SeatResponse, _$SeatResponse];
  @override
  final String wireName = 'SeatResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, SeatResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'coordinates',
      serializers.serialize(object.coordinates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
    ];
    Object? value;
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.room;
    if (value != null) {
      result
        ..add('room')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.theatre;
    if (value != null) {
      result
        ..add('theatre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column;
    if (value != null) {
      result
        ..add('column')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.row;
    if (value != null) {
      result
        ..add('row')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
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
    return result;
  }

  @override
  SeatResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeatResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'room':
          result.room = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'theatre':
          result.theatre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'column':
          result.column = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'row':
          result.row = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$SeatResponse extends SeatResponse {
  @override
  final bool? is_active;
  @override
  final BuiltList<int> coordinates;
  @override
  final String? id;
  @override
  final String? room;
  @override
  final String? theatre;
  @override
  final int? column;
  @override
  final String? row;
  @override
  final int? count;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$SeatResponse([void Function(SeatResponseBuilder)? updates]) =>
      (new SeatResponseBuilder()..update(updates)).build();

  _$SeatResponse._(
      {this.is_active,
      required this.coordinates,
      this.id,
      this.room,
      this.theatre,
      this.column,
      this.row,
      this.count,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        coordinates, 'SeatResponse', 'coordinates');
  }

  @override
  SeatResponse rebuild(void Function(SeatResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeatResponseBuilder toBuilder() => new SeatResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeatResponse &&
        is_active == other.is_active &&
        coordinates == other.coordinates &&
        id == other.id &&
        room == other.room &&
        theatre == other.theatre &&
        column == other.column &&
        row == other.row &&
        count == other.count &&
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
                                    $jc($jc(0, is_active.hashCode),
                                        coordinates.hashCode),
                                    id.hashCode),
                                room.hashCode),
                            theatre.hashCode),
                        column.hashCode),
                    row.hashCode),
                count.hashCode),
            createdAt.hashCode),
        updatedAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeatResponse')
          ..add('is_active', is_active)
          ..add('coordinates', coordinates)
          ..add('id', id)
          ..add('room', room)
          ..add('theatre', theatre)
          ..add('column', column)
          ..add('row', row)
          ..add('count', count)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SeatResponseBuilder
    implements Builder<SeatResponse, SeatResponseBuilder> {
  _$SeatResponse? _$v;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  ListBuilder<int>? _coordinates;
  ListBuilder<int> get coordinates =>
      _$this._coordinates ??= new ListBuilder<int>();
  set coordinates(ListBuilder<int>? coordinates) =>
      _$this._coordinates = coordinates;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _room;
  String? get room => _$this._room;
  set room(String? room) => _$this._room = room;

  String? _theatre;
  String? get theatre => _$this._theatre;
  set theatre(String? theatre) => _$this._theatre = theatre;

  int? _column;
  int? get column => _$this._column;
  set column(int? column) => _$this._column = column;

  String? _row;
  String? get row => _$this._row;
  set row(String? row) => _$this._row = row;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SeatResponseBuilder();

  SeatResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _is_active = $v.is_active;
      _coordinates = $v.coordinates.toBuilder();
      _id = $v.id;
      _room = $v.room;
      _theatre = $v.theatre;
      _column = $v.column;
      _row = $v.row;
      _count = $v.count;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeatResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeatResponse;
  }

  @override
  void update(void Function(SeatResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SeatResponse build() {
    _$SeatResponse _$result;
    try {
      _$result = _$v ??
          new _$SeatResponse._(
              is_active: is_active,
              coordinates: coordinates.build(),
              id: id,
              room: room,
              theatre: theatre,
              column: column,
              row: row,
              count: count,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        coordinates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SeatResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
