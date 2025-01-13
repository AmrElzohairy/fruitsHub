import 'package:fruits/core/services/data_base_services.dart';
import 'package:fruits/core/services/fire_base_auth_service.dart';
import 'package:fruits/core/services/fire_store_services.dart';
import 'package:fruits/features/auth/data/repo/auth_repo_impl.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DataBaseServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
      fireBaseAuthService: getIt<FirebaseAuthService>(),
      dataBaseAuthService: getIt<DataBaseServices>()));
}
