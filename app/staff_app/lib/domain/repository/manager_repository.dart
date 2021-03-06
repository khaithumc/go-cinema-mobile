import 'package:built_collection/built_collection.dart';

import '../model/user.dart';

abstract class ManagerRepository {
  Future<BuiltList<User>> loadUser(int page);

  Future<User> deleteUser(User user);

  Future<User> blockUser(User user);

  Future<User> unblockUser(User user);

  Future<User> changeRoleUser(User user, String theatre_id);
}
