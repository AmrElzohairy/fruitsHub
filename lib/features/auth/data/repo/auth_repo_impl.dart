import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/custom_exceptions.dart';
import 'package:fruits/core/errors/failures.dart';
import 'package:fruits/core/services/fire_base_auth_service.dart';
import 'package:fruits/features/auth/data/models/user_model.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FireBaseAuthService fireBaseAuthService;

  AuthRepoImpl(this.fireBaseAuthService);
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await fireBaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFireBaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(
          ServerFailure("Something went wrong  , please try again later"));
    }
  }
}
