import 'package:nakamas_chat/dependency_injection/services/api_service.dart';
import 'package:nakamas_chat/dependency_injection/services/daos_service.dart';
import 'package:nakamas_chat/dependency_injection/setup_locator.dart';
import 'package:nakamas_chat/repositories/firestore_repo.dart';
import 'package:nakamas_chat/repositories/user_repo.dart';

class RepositoriesService {

  UserRepository userRepository = UserRepository(
      userDao: getIt<DaosService>().userDao,
      userApi: getIt<ApiService>().userApi);

  FirestoreRepository firestoreRepository = FirestoreRepository();

}
