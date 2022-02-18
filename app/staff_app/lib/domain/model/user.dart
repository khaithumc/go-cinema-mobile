import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';

import 'location.dart';
import 'theatre.dart';

part 'user.g.dart';

enum Gender { MALE, FEMALE }
enum Role { ADMIN, STAFF, USER }

extension ToString on Role {
  String string() => this == Role.ADMIN
      ? 'ADMIN'
      : this == Role.STAFF
      ? 'STAFF'
      : 'USER';
}

abstract class User implements Built<User, UserBuilder> {
  String get uid;

  String get email;

  String get phoneNumber;

  String get fullName;

  Gender get gender;

  String get avatar;

  String get address;

  DateTime get birthday;

  Location get location;

  bool get isCompleted;

  bool get isActive;

  Role get role;

  Theatre get theatre;

  User._();

  factory User([void Function(UserBuilder) updates]) = _$User;
}