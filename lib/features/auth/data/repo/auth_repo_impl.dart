import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/core/errors/custom_exceptions.dart';
import 'package:fruits/core/errors/failures.dart';
import 'package:fruits/core/services/data_base_services.dart';
import 'package:fruits/core/services/fire_base_auth_service.dart';
import 'package:fruits/core/utils/back_end_endpoints.dart';
import 'package:fruits/features/auth/data/models/user_model.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';
import 'package:fruits/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService fireBaseAuthService;
  final DataBaseServices dataBaseAuthService;

  AuthRepoImpl(
      {required this.fireBaseAuthService, required this.dataBaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await fireBaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      var userEntity = UserEntity(
        uId: user.uid,
        email: email,
        name: name,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        await deleteUser(user);
      }
      log("Error occured in AuthRepoImpl.createUserWithEmailAndPassword :${e.toString()}");

      return left(ServerFailure("حدث خطأ ما , يرجى المحاوله في وقت لاحق"));
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await fireBaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await fireBaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFireBaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Error occured in AuthRepoImpl.signInWithEmailAndPassword :${e.toString()}");

      return left(ServerFailure("حدث خطأ ما , يرجى المحاوله في وقت لاحق"));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await fireBaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFireBaseUser(user);
      addUserData(user: userEntity);
      return right(UserModel.fromFireBaseUser(user));
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);

      log("Error occured in AuthRepoImpl.signInWithGoogle :${e.toString()}");

      return left(ServerFailure("حدث خطأ ما , يرجى المحاوله في وقت لاحق"));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await fireBaseAuthService.signInWithFacebook();
      var userEntity = UserModel.fromFireBaseUser(user);
      addUserData(user: userEntity);
      return right(UserModel.fromFireBaseUser(user));
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
      log("Error occured in AuthRepoImpl.signInWithFacebook :${e.toString()}");
      return left(ServerFailure("حدث خطأ ما , يرجى المحاوله في وقت لاحق"));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await dataBaseAuthService.addData(
        path: BackEndEndpoints.addUserData, data: user.toMap());
  }
}
