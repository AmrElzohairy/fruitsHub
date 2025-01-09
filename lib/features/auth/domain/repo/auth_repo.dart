import 'package:fruits/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> signInWithEmailAndPassword(String email, String password);
}