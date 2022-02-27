// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryResponse> _$categoryResponseSerializer =
    new _$CategoryResponseSerializer();

class _$CategoryResponseSerializer
    implements StructuredSerializer<CategoryResponse> {
  @override
  final Iterable<Type> types = const [CategoryResponse, _$CategoryResponse];
  @override
  final String wireName = 'CategoryResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryId;
    if (value != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoryResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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
        case 'category_id':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryResponse extends CategoryResponse {
  @override
  final String? id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String? categoryId;

  factory _$CategoryResponse(
          [void Function(CategoryResponseBuilder)? updates]) =>
      (new CategoryResponseBuilder()..update(updates)).build();

  _$CategoryResponse._(
      {this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt,
      this.categoryId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'CategoryResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'CategoryResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'CategoryResponse', 'updatedAt');
  }

  @override
  CategoryResponse rebuild(void Function(CategoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseBuilder toBuilder() =>
      new CategoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponse &&
        id == other.id &&
        name == other.name &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        categoryId == other.categoryId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), createdAt.hashCode),
            updatedAt.hashCode),
        categoryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('categoryId', categoryId))
        .toString();
  }
}

class CategoryResponseBuilder
    implements Builder<CategoryResponse, CategoryResponseBuilder> {
  _$CategoryResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  CategoryResponseBuilder();

  CategoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _categoryId = $v.categoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryResponse;
  }

  @override
  void update(void Function(CategoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryResponse build() {
    final _$result = _$v ??
        new _$CategoryResponse._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'CategoryResponse', 'name'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'CategoryResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'CategoryResponse', 'updatedAt'),
            categoryId: categoryId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
