// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationLocal> _$locationLocalSerializer =
    new _$LocationLocalSerializer();
Serializer<UserLocal> _$userLocalSerializer = new _$UserLocalSerializer();

class _$LocationLocalSerializer implements StructuredSerializer<LocationLocal> {
  @override
  final Iterable<Type> types = const [LocationLocal, _$LocationLocal];
  @override
  final String wireName = 'LocationLocal';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationLocal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  LocationLocal deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationLocalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$UserLocalSerializer implements StructuredSerializer<UserLocal> {
  @override
  final Iterable<Type> types = const [UserLocal, _$UserLocal];
  @override
  final String wireName = 'UserLocal';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserLocal object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'phone_number',
      serializers.serialize(object.phone_number,
          specifiedType: const FullType(String)),
      'full_name',
      serializers.serialize(object.full_name,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'is_completed',
      serializers.serialize(object.is_completed,
          specifiedType: const FullType(bool)),
      'is_active',
      serializers.serialize(object.is_active,
          specifiedType: const FullType(bool)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LocationLocal)));
    }
    value = object.theatreResponseString;
    if (value != null) {
      result
        ..add('theatreResponseString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserLocal deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserLocalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phone_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(LocationLocal))! as LocationLocal);
          break;
        case 'is_completed':
          result.is_completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'theatreResponseString':
          result.theatreResponseString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationLocal extends LocationLocal {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$LocationLocal([void Function(LocationLocalBuilder)? updates]) =>
      (new LocationLocalBuilder()..update(updates)).build();

  _$LocationLocal._({required this.latitude, required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'LocationLocal', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'LocationLocal', 'longitude');
  }

  @override
  LocationLocal rebuild(void Function(LocationLocalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationLocalBuilder toBuilder() => new LocationLocalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationLocal &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationLocal')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class LocationLocalBuilder
    implements Builder<LocationLocal, LocationLocalBuilder> {
  _$LocationLocal? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  LocationLocalBuilder();

  LocationLocalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationLocal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationLocal;
  }

  @override
  void update(void Function(LocationLocalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationLocal build() {
    final _$result = _$v ??
        new _$LocationLocal._(
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'LocationLocal', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'LocationLocal', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

class _$UserLocal extends UserLocal {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String phone_number;
  @override
  final String full_name;
  @override
  final String gender;
  @override
  final String? avatar;
  @override
  final String address;
  @override
  final DateTime? birthday;
  @override
  final LocationLocal? location;
  @override
  final bool is_completed;
  @override
  final bool is_active;
  @override
  final String role;
  @override
  final String? theatreResponseString;

  factory _$UserLocal([void Function(UserLocalBuilder)? updates]) =>
      (new UserLocalBuilder()..update(updates)).build();

  _$UserLocal._(
      {required this.uid,
      required this.email,
      required this.phone_number,
      required this.full_name,
      required this.gender,
      this.avatar,
      required this.address,
      this.birthday,
      this.location,
      required this.is_completed,
      required this.is_active,
      required this.role,
      this.theatreResponseString})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'UserLocal', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'UserLocal', 'email');
    BuiltValueNullFieldError.checkNotNull(
        phone_number, 'UserLocal', 'phone_number');
    BuiltValueNullFieldError.checkNotNull(full_name, 'UserLocal', 'full_name');
    BuiltValueNullFieldError.checkNotNull(gender, 'UserLocal', 'gender');
    BuiltValueNullFieldError.checkNotNull(address, 'UserLocal', 'address');
    BuiltValueNullFieldError.checkNotNull(
        is_completed, 'UserLocal', 'is_completed');
    BuiltValueNullFieldError.checkNotNull(is_active, 'UserLocal', 'is_active');
    BuiltValueNullFieldError.checkNotNull(role, 'UserLocal', 'role');
  }

  @override
  UserLocal rebuild(void Function(UserLocalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLocalBuilder toBuilder() => new UserLocalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLocal &&
        uid == other.uid &&
        email == other.email &&
        phone_number == other.phone_number &&
        full_name == other.full_name &&
        gender == other.gender &&
        avatar == other.avatar &&
        address == other.address &&
        birthday == other.birthday &&
        location == other.location &&
        is_completed == other.is_completed &&
        is_active == other.is_active &&
        role == other.role &&
        theatreResponseString == other.theatreResponseString;
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
                                                $jc($jc(0, uid.hashCode),
                                                    email.hashCode),
                                                phone_number.hashCode),
                                            full_name.hashCode),
                                        gender.hashCode),
                                    avatar.hashCode),
                                address.hashCode),
                            birthday.hashCode),
                        location.hashCode),
                    is_completed.hashCode),
                is_active.hashCode),
            role.hashCode),
        theatreResponseString.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserLocal')
          ..add('uid', uid)
          ..add('email', email)
          ..add('phone_number', phone_number)
          ..add('full_name', full_name)
          ..add('gender', gender)
          ..add('avatar', avatar)
          ..add('address', address)
          ..add('birthday', birthday)
          ..add('location', location)
          ..add('is_completed', is_completed)
          ..add('is_active', is_active)
          ..add('role', role)
          ..add('theatreResponseString', theatreResponseString))
        .toString();
  }
}

class UserLocalBuilder implements Builder<UserLocal, UserLocalBuilder> {
  _$UserLocal? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone_number;
  String? get phone_number => _$this._phone_number;
  set phone_number(String? phone_number) => _$this._phone_number = phone_number;

  String? _full_name;
  String? get full_name => _$this._full_name;
  set full_name(String? full_name) => _$this._full_name = full_name;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  LocationLocalBuilder? _location;
  LocationLocalBuilder get location =>
      _$this._location ??= new LocationLocalBuilder();
  set location(LocationLocalBuilder? location) => _$this._location = location;

  bool? _is_completed;
  bool? get is_completed => _$this._is_completed;
  set is_completed(bool? is_completed) => _$this._is_completed = is_completed;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _theatreResponseString;
  String? get theatreResponseString => _$this._theatreResponseString;
  set theatreResponseString(String? theatreResponseString) =>
      _$this._theatreResponseString = theatreResponseString;

  UserLocalBuilder();

  UserLocalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _phone_number = $v.phone_number;
      _full_name = $v.full_name;
      _gender = $v.gender;
      _avatar = $v.avatar;
      _address = $v.address;
      _birthday = $v.birthday;
      _location = $v.location?.toBuilder();
      _is_completed = $v.is_completed;
      _is_active = $v.is_active;
      _role = $v.role;
      _theatreResponseString = $v.theatreResponseString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLocal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLocal;
  }

  @override
  void update(void Function(UserLocalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLocal build() {
    _$UserLocal _$result;
    try {
      _$result = _$v ??
          new _$UserLocal._(
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'UserLocal', 'uid'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'UserLocal', 'email'),
              phone_number: BuiltValueNullFieldError.checkNotNull(
                  phone_number, 'UserLocal', 'phone_number'),
              full_name: BuiltValueNullFieldError.checkNotNull(
                  full_name, 'UserLocal', 'full_name'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, 'UserLocal', 'gender'),
              avatar: avatar,
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'UserLocal', 'address'),
              birthday: birthday,
              location: _location?.build(),
              is_completed: BuiltValueNullFieldError.checkNotNull(
                  is_completed, 'UserLocal', 'is_completed'),
              is_active: BuiltValueNullFieldError.checkNotNull(
                  is_active, 'UserLocal', 'is_active'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'UserLocal', 'role'),
              theatreResponseString: theatreResponseString);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserLocal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
