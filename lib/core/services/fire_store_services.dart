import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits/core/services/data_base_services.dart';
import 'package:fruits/features/auth/data/models/user_model.dart';
import 'package:fruits/features/auth/domain/entities/user_entity.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData(
      {required String path, required String uId}) async {
    var data = await firestore.collection(path).doc(uId).get();
    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}
