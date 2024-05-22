import 'package:get_it/get_it.dart';
import 'package:nakamas_chat/dependency_injection/services/api_service.dart';
import 'package:nakamas_chat/dependency_injection/services/daos_service.dart';
import 'package:nakamas_chat/dependency_injection/services/database_service.dart';
import 'package:nakamas_chat/dependency_injection/services/repositories_service.dart';

var getIt = GetIt.instance;

void setupLocator(){
  getIt.registerLazySingleton(() => DatabaseService());
  getIt.registerLazySingleton(() => RepositoriesService());
  getIt.registerLazySingleton(() => DaosService());
  getIt.registerLazySingleton(() => ApiService());
}