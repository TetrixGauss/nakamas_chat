import 'package:nakamas_chat/database/database.dart';
import 'package:nakamas_chat/dependency_injection/setup_locator.dart';

import 'database_service.dart';

class DaosService{

  UserDao userDao = UserDao(getIt<DatabaseService>().db);
}