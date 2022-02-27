// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationResponse> _$locationResponseSerializer =
    new _$LocationResponseSerializer();
Serializer<UserResponse> _$userResponseSerializer =
    new _$UserResponseSerializer();

class _$LocationResponseSerializer
    implements StructuredSerializer<LocationResponse> {
  @override
  final Iterable<Type> types = const [LocationResponse, _$LocationResponse];
  @override
  final String wireName = 'LocationResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.coordinates;
    if (value != null) {
      result
        ..add('coordinates')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LocationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserResponseSerializer implements StructuredSerializer<UserResponse> {
  @override
  final Iterable<Type> types = const [UserResponse, _$UserResponse];
  @override
  final String wireName = 'UserResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
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
            specifiedType: const FullType(LocationResponse)));
    }
    value = object.theatre;
    if (value != null) {
      result
        ..add('theatre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TheatreResponse)));
    }
    return result;
  }

  @override
  UserResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
                  specifiedType: const FullType(LocationResponse))!
              as LocationResponse);
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
        case 'theatre':
          result.theatre.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TheatreResponse))!
              as TheatreResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationResponse extends LocationResponse {
  @override
  final BuiltList<double>? coordinates;
  @override
  final String? type;

  factory _$LocationResponse(
          [void Function(LocationResponseBuilder)? updates]) =>
      (new LocationResponseBuilder()..update(updates)).build();

  _$LocationResponse._({this.coordinates, this.type}) : super._();

  @override
  LocationResponse rebuild(void Function(LocationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationResponseBuilder toBuilder() =>
      new LocationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationResponse &&
        coordinates == other.coordinates &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, coordinates.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationResponse')
          ..add('coordinates', coordinates)
          ..add('type', type))
        .toString();
  }
}

class LocationResponseBuilder
    implements Builder<LocationResponse, LocationResponseBuilder> {
  _$LocationResponse? _$v;

  ListBuilder<double>? _coordinates;
  ListBuilder<double> get coordinates =>
      _$this._coordinates ??= new ListBuilder<double>();
  set coordinates(ListBuilder<double>? coordinates) =>
      _$this._coordinates = coordinates;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  LocationResponseBuilder();

  LocationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coordinates = $v.coordinates?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationResponse;
  }

  @override
  void update(void Function(LocationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationResponse build() {
    _$LocationResponse _$result;
    try {
      _$result = _$v ??
          new _$LocationResponse._(
              coordinates: _coordinates?.build(), type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserResponse extends UserResponse {
  @override
  final String id;
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
  final LocationResponse? location;
  @override
  final bool is_completed;
  @override
  final bool is_active;
  @override
  final String role;
  @override
  final TheatreResponse? theatre;

  factory _$UserResponse([void Function(UserResponseBuilder)? updates]) =>
      (new UserResponseBuilder()..update(updates)).build();

  _$UserResponse._(
      {required this.id,
      required this.uid,
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
      this.theatre})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'UserResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'UserResponse', 'uid');
    BuiltValueNullFieldError.checkNotNull(email, 'UserResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        phone_number, 'UserResponse', 'phone_number');
    BuiltValueNullFieldError.checkNotNull(
        full_name, 'UserResponse', 'full_name');
    BuiltValueNullFieldError.checkNotNull(gender, 'UserResponse', 'gender');
    BuiltValueNullFieldError.checkNotNull(address, 'UserResponse', 'address');
    BuiltValueNullFieldError.checkNotNull(
        is_completed, 'UserResponse', 'is_completed');
    BuiltValueNullFieldError.checkNotNull(
        is_active, 'UserResponse', 'is_active');
    BuiltValueNullFieldError.checkNotNull(role, 'UserResponse', 'role');
  }

  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => new UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse &&
        id == other.id &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, id.hashCode),
                                                        uid.hashCode),
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
        theatre.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserResponse')
          ..add('id', id)
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
          ..add('theatre', theatre))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  LocationResponseBuilder? _location;
  LocationResponseBuilder get location =>
      _$this._location ??= new LocationResponseBuilder();
  set location(LocationResponseBuilder? location) =>
      _$this._location = location;

  bool? _is_completed;
  bool? get is_completed => _$this._is_completed;
  set is_completed(bool? is_completed) => _$this._is_completed = is_completed;

  bool? _is_active;
  bool? get is_active => _$this._is_active;
  set is_active(bool? is_active) => _$this._is_active = is_active;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  TheatreResponseBuilder? _theatre;
  TheatreResponseBuilder get theatre =>
      _$this._theatre ??= new TheatreResponseBuilder();
  set theatre(TheatreResponseBuilder? theatre) => _$this._theatre = theatre;

  UserResponseBuilder();

  UserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
      _theatre = $v.theatre?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserResponse build() {
    _$UserResponse _$result;
    try {
      _$result = _$v ??
          new _$UserResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'UserResponse', 'id'),
              uid: BuiltValueNullFieldError.checkNotNull(
                  uid, 'UserResponse', 'uid'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, 'UserResponse', 'email'),
              phone_number: BuiltValueNullFieldError.checkNotNull(
                  phone_number, 'UserResponse', 'phone_number'),
              full_name: BuiltValueNullFieldError.checkNotNull(
                  full_name, 'UserResponse', 'full_name'),
              gender: BuiltValueNullFieldError.checkNotNull(
                  gender, 'UserResponse', 'gender'),
              avatar: avatar,
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'UserResponse', 'address'),
              birthday: birthday,
              location: _location?.build(),
              is_completed: BuiltValueNullFieldError.checkNotNull(
                  is_completed, 'UserResponse', 'is_completed'),
              is_active: BuiltValueNullFieldError.checkNotNull(
                  is_active, 'UserResponse', 'is_active'),
              role: BuiltValueNullFieldError.checkNotNull(
                  role, 'UserResponse', 'role'),
              theatre: _theatre?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();

        _$failedField = 'theatre';
        _theatre?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
