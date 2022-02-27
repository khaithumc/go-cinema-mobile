// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theatre.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Theatre extends Theatre {
  @override
  final Location location;
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

  factory _$Theatre([void Function(TheatreBuilder)? updates]) =>
      (new TheatreBuilder()..update(updates)).build();

  _$Theatre._(
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
    BuiltValueNullFieldError.checkNotNull(location, 'Theatre', 'location');
    BuiltValueNullFieldError.checkNotNull(isActive, 'Theatre', 'isActive');
    BuiltValueNullFieldError.checkNotNull(rooms, 'Theatre', 'rooms');
    BuiltValueNullFieldError.checkNotNull(id, 'Theatre', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Theatre', 'name');
    BuiltValueNullFieldError.checkNotNull(address, 'Theatre', 'address');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, 'Theatre', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Theatre', 'description');
    BuiltValueNullFieldError.checkNotNull(
        openingHours, 'Theatre', 'openingHours');
    BuiltValueNullFieldError.checkNotNull(
        roomSummary, 'Theatre', 'roomSummary');
    BuiltValueNullFieldError.checkNotNull(createdAt, 'Theatre', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(updatedAt, 'Theatre', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(cover, 'Theatre', 'cover');
    BuiltValueNullFieldError.checkNotNull(thumbnail, 'Theatre', 'thumbnail');
  }

  @override
  Theatre rebuild(void Function(TheatreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TheatreBuilder toBuilder() => new TheatreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Theatre &&
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
}

class TheatreBuilder implements Builder<Theatre, TheatreBuilder> {
  _$Theatre? _$v;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

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

  TheatreBuilder();

  TheatreBuilder get _$this {
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
  void replace(Theatre other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Theatre;
  }

  @override
  void update(void Function(TheatreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Theatre build() {
    _$Theatre _$result;
    try {
      _$result = _$v ??
          new _$Theatre._(
              location: location.build(),
              isActive: BuiltValueNullFieldError.checkNotNull(
                  isActive, 'Theatre', 'isActive'),
              rooms: rooms.build(),
              id: BuiltValueNullFieldError.checkNotNull(id, 'Theatre', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Theatre', 'name'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'Theatre', 'address'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, 'Theatre', 'phoneNumber'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'Theatre', 'description'),
              email: email,
              openingHours: BuiltValueNullFieldError.checkNotNull(
                  openingHours, 'Theatre', 'openingHours'),
              roomSummary: BuiltValueNullFieldError.checkNotNull(
                  roomSummary, 'Theatre', 'roomSummary'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'Theatre', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(
                  updatedAt, 'Theatre', 'updatedAt'),
              cover: BuiltValueNullFieldError.checkNotNull(
                  cover, 'Theatre', 'cover'),
              thumbnail: BuiltValueNullFieldError.checkNotNull(
                  thumbnail, 'Theatre', 'thumbnail'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();

        _$failedField = 'rooms';
        rooms.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Theatre', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
