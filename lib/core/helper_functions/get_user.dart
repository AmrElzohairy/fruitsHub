import 'dart:convert';

import 'package:fruits/core/services/shared_preferences_singletone.dart';
import 'package:fruits/core/utils/back_end_endpoints.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';

import '../../features/auth/data/models/user_model.dart';

UserEntity getUser() {
  var user = Prefs.getString(BackEndEndpoints.kUser);
  var userEntity = UserModel.fromJson(jsonDecode(user));
  return userEntity;
}
