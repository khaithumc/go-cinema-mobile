import 'dart:convert';

import 'package:rx_shared_preferences/rx_shared_preferences.dart';
import 'package:rxdart/rxdart.dart';

import 'user_local.dart';
import 'user_local_source.dart';

class UserLocalSourceImpl implements UserLocalSource {
  static const _tokenKey = 'com.go.cinema.token';
  static const _userKey = 'com.go.cinema.user';

  final RxSharedPreferences _preferences;

  UserLocalSourceImpl(this._preferences);

  @override
  Future<void> saveToken(String? token) =>
      _preferences.setString(_tokenKey, token);

  @override
  Future<void> saveUser(UserLocal? user) => _preferences.write<UserLocal>(
    _userKey,
    user,
        (u) => u == null ? null : jsonEncode(u),
  );

  @override
  Stream<String?> get token$ =>
      _preferences.getStringStream(_tokenKey).onErrorReturn(null);

  @override
  Stream<UserLocal?> get user$ => _preferences
      .observe<UserLocal>(_userKey, _toUserLocal)
      .onErrorReturn(null);

  static UserLocal? _toUserLocal(Object? jsonString) {
    return jsonString == null
        ? null
        : UserLocal.fromJson(jsonDecode(jsonString as String));
  }
}