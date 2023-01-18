import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String email;
  final String password;
  final String fullName;
  final String phoneNo;

  UserModel({
    this.id,
    required this.email,
    required this.password,
    required this.fullName,
    required this.phoneNo,
  });

  toJSON() {
    return {
      "email": email,
      "password": password,
      "fullName": fullName,
      "phoneNo": phoneNo,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return UserModel(
      id: document.id,
      email: data?["email"],
      password: data?["password"],
      fullName: data?["fullName"],
      phoneNo: data?["phoneNo"],
    );
  }
}