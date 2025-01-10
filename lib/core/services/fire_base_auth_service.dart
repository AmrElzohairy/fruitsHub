import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/core/errors/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Error occured in FirebaseAuthService.createUserWithEmailAndPassword :${e.toString()} , and code : ${e.code}");

      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمه المرور ضعيفه');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الالكتروني مستخدم بالفعل');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'البريد الالكتروني غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else {
        throw CustomException(
            message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
      }
    } catch (e) {
      log("Error occured in FirebaseAuthService.createUserWithEmailAndPassword :${e.toString()} ");

      throw CustomException(message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Error occured in FirebaseAuthService.signInWithEmailAndPassword :${e.toString()} , and code : ${e.code}");

      if (e.code == 'user-not-found') {
        throw CustomException(message: 'البريد الالكتروني او كلمه المرور غير صحيحه');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'البريد الالكتروني او كلمه المرور غير صحيحه');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'لا يوجد اتصال بالانترنت');
      } else {
        throw CustomException(
            message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
      }
    } catch (e) {
      log("Error occured in FirebaseAuthService.signInWithEmailAndPassword :${e.toString()} ");

      throw CustomException(message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
    }
  }
}
