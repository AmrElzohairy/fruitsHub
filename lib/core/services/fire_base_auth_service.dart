import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/core/errors/custom_exceptions.dart';

class FireBaseAuthService {
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
        throw CustomException(message: 'Password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'Email is already in use.');
      } else {
        throw CustomException(
            message: "Something went wrong  , please try again later");
      }
    } catch (e) {
      throw CustomException(
          message: "Something went wrong  , please try again later");
    }
  }
}
