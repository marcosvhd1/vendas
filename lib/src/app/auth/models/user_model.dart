import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String email;
  String? password;
  String? fullName;
  String? phoneNo;
  String? providerId;

  UserModel({
    this.id,
    required this.email,
    this.password,
    this.fullName,
    this.phoneNo,
    this.providerId,
  });

  toJSON() {
    return {
      "email": email,
      "password": password,
      "fullName": fullName,
      "phoneNo": phoneNo,
      "providerId": providerId,
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
      providerId: data?["providerId"],
    );
  }
}