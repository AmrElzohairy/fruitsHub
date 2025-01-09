import 'package:dartz/dartz.dart';
import 'package:fruits/core/errors/failures.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}