import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String email;
  String? password;
  String? fullName;
  String? phoneNo;

  UserModel({
    this.id,
    required this.email,
    this.password,
    this.fullName,
    this.phoneNo,
  });

  toJSON() {
    return {
      "email": email,
      "fullName": fullName,
      "phoneNo": phoneNo,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return UserModel(
      id: document.id,
      email: data?["email"],
      fullName: data?["fullName"],
      phoneNo: data?["phoneNo"],
    );
  }
}