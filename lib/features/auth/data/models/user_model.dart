import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.name, required super.uId});

  factory UserModel.fromFireBaseUser(User user) {
    return UserModel(
      email: user.email ?? "",
      name: user.displayName ?? "",
      uId: user.uid,
    );
  }

  factory UserModel.fromUserEntity(UserEntity user) {
    return UserModel(
      email: user.email,
      name: user.name,
      uId: user.uId,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      uId: json['uId'],
    );
  }

    toMap() {
    return {
      'email': email,
      'name': name,
      'uId': uId,
    };
  }
}
