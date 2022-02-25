// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonResponse> _$personResponseSerializer =
    new _$PersonResponseSerializer();

class _$PersonResponseSerializer
    implements StructuredSerializer<PersonResponse> {
  @override
  final Iterable<Type> types = const [PersonResponse, _$PersonResponse];
  @override
  final String wireName = 'PersonResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, PersonResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'avatar',
      serializers.serialize(object.avatar,
          specifiedType: const FullType(String)),
      'full_name',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
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
    value = object.v;
    if (value != null) {
      result
        ..add('v')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PersonResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonResponseBuilder();

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
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
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
        case 'v':
          result.v = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$PersonResponse extends PersonResponse {
  @override
  final bool? isActive;
  @override
  final String id;
  @override
  final String avatar;
  @override
  final String fullName;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int? v;

  factory _$PersonResponse([void Function(PersonResponseBuilder)? updates]) =>
      (new PersonResponseBuilder()..update(updates)).build();

  _$PersonResponse._(
      {this.isActive,
      required this.id,
      required this.avatar,
      required this.fullName,
      required this.createdAt,
      required this.updatedAt,
      this.v})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'PersonResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(avatar, 'PersonResponse', 'avatar');
    BuiltValueNullFieldError.checkNotNull(
        fullName, 'PersonResponse', 'fullName');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'PersonResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'PersonResponse', 'updatedAt');
  }

  @override
  PersonResponse rebuild(void Function(PersonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonResponseBuilder toBuilder() =>
      new PersonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonResponse &&
        isActive == other.isActive &&
        id == other.id &&
        avatar == other.avatar &&
        fullName == other.fullName &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        v == other.v;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, isActive.hashCode), id.hashCode),
                        avatar.hashCode),
                    fullName.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        v.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PersonResponse')
          ..add('isActive', isActive)
          ..add('id', id)
          ..add('avatar', avatar)
          ..add('fullName', fullName)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('v', v))
        .toString();
  }
}

class PersonResponseBuilder
    implements Builder<PersonResponse, PersonResponseBuilder> {
  _$PersonResponse? _$v;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _v;
  int? get v => _$this._v;
  set v(int? v) => _$this._v = v;

  PersonResponseBuilder();

  PersonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isActive = $v.isActive;
      _id = $v.id;
      _avatar = $v.avatar;
      _fullName = $v.fullName;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _v = $v.v;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonResponse;
  }

  @override
  void update(void Function(PersonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PersonResponse build() {
    final _$result = _$v ??
        new _$PersonResponse._(
            isActive: isActive,
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'PersonResponse', 'id'),
            avatar: BuiltValueNullFieldError.checkNotNull(
                avatar, 'PersonResponse', 'avatar'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, 'PersonResponse', 'fullName'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'PersonResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'PersonResponse', 'updatedAt'),
            v: v);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
