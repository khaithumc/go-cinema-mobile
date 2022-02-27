// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theatre_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TheatreResponse> _$theatreResponseSerializer =
    new _$TheatreResponseSerializer();

class _$TheatreResponseSerializer
    implements StructuredSerializer<TheatreResponse> {
  @override
  final Iterable<Type> types = const [TheatreResponse, _$TheatreResponse];
  @override
  final String wireName = 'TheatreResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TheatreResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(LocationResponse)),
      'is_active',
      serializers.serialize(object.isActive,
          specifiedType: const FullType(bool)),
      'rooms',
      serializers.serialize(object.rooms,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'phone_number',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'opening_hours',
      serializers.serialize(object.openingHours,
          specifiedType: const FullType(String)),
      'room_summary',
      serializers.serialize(object.roomSummary,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'updatedAt',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime)),
      'cover',
      serializers.serialize(object.cover,
          specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TheatreResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TheatreResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LocationResponse))!
              as LocationResponse);
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rooms':
          result.rooms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'opening_hours':
          result.openingHours = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'room_summary':
          result.roomSummary = serializers.deserialize(value,
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
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TheatreResponse extends TheatreResponse {
  @override
  final LocationResponse location;
  @override
  final bool isActive;
  @override
  final BuiltList<String> rooms;
  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String description;
  @override
  final String? email;
  @override
  final String openingHours;
  @override
  final String roomSummary;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String cover;
  @override
  final String thumbnail;

  factory _$TheatreResponse([void Function(TheatreResponseBuilder)? updates]) =>
      (new TheatreResponseBuilder()..update(updates)).build();

  _$TheatreResponse._(
      {required this.location,
      required this.isActive,
      required this.rooms,
      required this.id,
      required this.name,
      required this.address,
      required this.phoneNumber,
      required this.description,
      this.email,
      required this.openingHours,
      required this.roomSummary,
      required this.createdAt,
      required this.updatedAt,
      required this.cover,
      required this.thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        location, 'TheatreResponse', 'location');
    BuiltValueNullFieldError.checkNotNull(
        isActive, 'TheatreResponse', 'isActive');
    BuiltValueNullFieldError.checkNotNull(rooms, 'TheatreResponse', 'rooms');
    BuiltValueNullFieldError.checkNotNull(id, 'TheatreResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'TheatreResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        address, 'TheatreResponse', 'address');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'TheatreResponse', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        description, 'TheatreResponse', 'description');
    BuiltValueNullFieldError.checkNotNull(
        openingHours, 'TheatreResponse', 'openingHours');
    BuiltValueNullFieldError.checkNotNull(
        roomSummary, 'TheatreResponse', 'roomSummary');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'TheatreResponse', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'TheatreResponse', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(cover, 'TheatreResponse', 'cover');
    BuiltValueNullFieldError.checkNotNull(
        thumbnail, 'TheatreResponse', 'thumbnail');
  }

  @override
  TheatreResponse rebuild(void Function(TheatreResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TheatreResponseBuilder toBuilder() =>
      new TheatreResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TheatreResponse &&
        location == other.location &&
        isActive == other.isActive &&
        rooms == other.rooms &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        phoneNumber == other.phoneNumber &&
        description == other.description &&
        email == other.email &&
        openingHours == other.openingHours &&
        roomSummary == other.roomSummary &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        cover == other.cover &&
        thumbnail == other.thumbnail;
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
                                                                0,
                                                                location
                                                                    .hashCode),
                                                            isActive.hashCode),
                                                        rooms.hashCode),
                                                    id.hashCode),
                                                name.hashCode),
                                            address.hashCode),
                                        phoneNumber.hashCode),
                                    description.hashCode),
                                email.hashCode),
                            openingHours.hashCode),
                        roomSummary.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            cover.hashCode),
        thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TheatreResponse')
          ..add('location', location)
          ..add('isActive', isActive)
          ..add('rooms', rooms)
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('phoneNumber', phoneNumber)
          ..add('description', description)
          ..add('email', email)
          ..add('openingHours', openingHours)
          ..add('roomSummary', roomSummary)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('cover', cover)
          ..add('thumbnail', thumbnail))
        .toString();
  }
}

class TheatreResponseBuilder
    implements Builder<TheatreResponse, TheatreResponseBuilder> {
  _$TheatreResponse? _$v;

  LocationResponseBuilder? _location;
  LocationResponseBuilder get location =>
      _$this._location ??= new LocationResponseBuilder();
  set location(LocationResponseBuilder? location) =>
      _$this._location = location;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  ListBuilder<String>? _rooms;
  ListBuilder<String> get rooms => _$this._rooms ??= new ListBuilder<String>();
  set rooms(ListBuilder<String>? rooms) => _$this._rooms = rooms;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _openingHours;
  String? get openingHours => _$this._openingHours;
  set openingHours(String? openingHours) => _$this._openingHours = openingHours;

  String? _roomSummary;
  String? get roomSummary => _$this._roomSummary;
  set roomSummary(String? roomSummary) => _$this._roomSummary = roomSummary;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  TheatreResponseBuilder();

  TheatreResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location.toBuilder();
      _isActive = $v.isActive;
      _rooms = $v.rooms.toBuilder();
      _id = $v.id;
      _name = $v.name;
      _address = $v.address;
      _phoneNumber = $v.phoneNumber;
      _description = $v.description;
      _email = $v.email;
      _openingHours = $v.openingHours;
      _roomSummary = $v.roomSummary;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _cover = $v.cover;
      _thumbnail = $v.thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TheatreResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TheatreResponse;
  }

  @override
  void update(void Function(TheatreResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TheatreResponse build() {
    _$TheatreResponse _$result;
    try {
      _$result = _$v ??
          new _$TheatreResponse._(
              location: location.build(),
              isActive: BuiltValueNullFieldError.checkNotNull(
                  isActive, 'TheatreResponse', 'isActive'),
              rooms: rooms.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'TheatreResponse', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'TheatreResponse', 'name'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'TheatreResponse', 'address'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, 'TheatreResponse', 'phoneNumber'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'TheatreResponse', 'description'),
              email: email,
              openingHours: BuiltValueNullFieldError.checkNotNull(
                  openingHours, 'TheatreResponse', 'openingHours'),
              roomSummary: BuiltValueNullFieldError.checkNotNull(
                  roomSummary, 'TheatreResponse', 'roomSummary'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'TheatreResponse', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, 'TheatreResponse', 'updatedAt'),
              cover: BuiltValueNullFieldError.checkNotNull(cover, 'TheatreResponse', 'cover'),
              thumbnail: BuiltValueNullFieldError.checkNotNull(thumbnail, 'TheatreResponse', 'thumbnail'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();

        _$failedField = 'rooms';
        rooms.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TheatreResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
