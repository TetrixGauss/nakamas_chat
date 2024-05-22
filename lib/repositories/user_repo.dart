
import 'package:drift/drift.dart';
import 'package:nakamas_chat/models/user_model.dart' as model;
import 'package:nakamas_chat/network/api/user_api.dart';

import '../database/database.dart';

class UserRepository {
  final UserDao _userDao;
  final UserApi _userApi;

  UserRepository({required UserDao userDao, required UserApi userApi})
      : _userDao = userDao,
        _userApi = userApi;

  Future findUser() async{
    return model.User.fromDB(await _userDao.findUser);
  }

  Future<List<model.User>> getUsers() async {
    List<model.User> list = [];
    for (var element in (await _userDao.getUsers())) {
      list.add(model.User.fromDB(element));
    }
    return list;
  }

  storeUser(model.User user) async{
    var userForDB = UserTableCompanion(
        name: Value(user.name),
        email: Value(user.email),
        firestoreId: Value(user.firestoreId),
        status: Value(user.status),
        picture: Value(user.picture),
        showPicture: Value(user.showPicture)
        );
    await _userDao.storeUser(userForDB);
  }

  updateUser(model.User user) async {
    var userForDB = UserTableCompanion(
      id: Value(user.id),
      name: Value(user.name),
      email: Value(user.email),
      firestoreId: Value(user.firestoreId),
      status: Value(user.status),
      picture: Value(user.picture),
      showPicture: Value(user.showPicture)
    );
    await _userDao.updateUser(userForDB);
  }

  Future<int> getCount() async {
    return await _userDao.getCount();
  }

  Future<void> deleteAllEntries() async {
    return await _userDao.deleteAllEntries;
  }

  Stream<List<User>> getLoggedInUserStream() => _userDao.getdUserStream();
}
