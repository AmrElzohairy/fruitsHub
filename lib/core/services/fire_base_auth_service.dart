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
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمه المرور ضعيفه');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'البريد الالكتروني مستخدم بالفعل');
      } else {
        throw CustomException(
            message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
      }
    } catch (e) {
      throw CustomException(
          message: "حدث خطأ ما , يرجى المحاوله في وقت لاحق");
    }
  }
}
