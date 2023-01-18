import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:vendas/src/app/auth/models/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find<UserRepository>();

  final _db = FirebaseFirestore.instance;

  Future<String?> createUser(UserModel user) async {
    try {
      await _db.collection("users").add(user.toJSON());
    } catch (e) {
      return e.toString();
    }
    return null;
  }

  Future<String?> updateUserData(UserModel user) async {
    try {
      await _db.collection("users").doc(user.id).update(user.toJSON());
    } catch (e) {
      return e.toString();
    }
    return null;
  }

  Future<UserModel?> getUserDetails(String email) async {
    try {
      final snapshot = await _db.collection("users").where("email", isEqualTo: email).get();
      final userData = snapshot.docs.map((user) => UserModel.fromSnapshot(user)).single;

      return userData;
    } catch (e) {
      log(e.toString());
      return null;
    }

  }

  Future<List<UserModel>?> getAllUsers() async {
    try {
      final snapshot = await _db.collection("users").get();
      final userData = snapshot.docs.map((user) => UserModel.fromSnapshot(user)).toList();
    
      return userData;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
