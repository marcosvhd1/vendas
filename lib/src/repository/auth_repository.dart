import 'dart:developer';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vendas/src/app/auth/controllers/user_controller.dart';
import 'package:vendas/src/app/auth/models/user_model.dart';
import 'package:vendas/src/constants/get_snackbar.dart';
import 'package:vendas/src/errors/firebase_erros.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find<AuthRepository>();

  final userController = Get.put(UserController());

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitalScreen);
  }

  _setInitalScreen(User? user) {
    user == null ? Get.offAllNamed("/welcome") : Get.offAllNamed("/home");
  }

  Future<String?> createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      final error = TFirebaseError.code(e.code);
      return error.message;
    } catch (e) {
      log(e.toString());
      const error = TFirebaseError();
      return error.message;
    }
    return null;
  }

  Future<String?> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      final error = TFirebaseError.code(e.code);
      return error.message;
    } catch (e) {
      log(e.toString());
      const error = TFirebaseError();
      return error.message;
    }
    return null;
  }

  Future<String?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      
      final credentials = await _auth.signInWithCredential(credential);
      
      if (credentials.additionalUserInfo!.isNewUser) {
        userController.createUser(UserModel(
          email: credentials.user!.email!,
          fullName: credentials.user!.displayName,
          phoneNo: credentials.user!.phoneNumber,
        ));
      }
      
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      final error = TFirebaseError.code(e.code);
      return error.message;
    } catch (e) {
      log(e.toString());
      const error = TFirebaseError();
      return error.message;
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      showSnackbar(
        type: "sucess",
        title: "Sucesso",
        message: "Logout realizado.",
      );
    } catch (e) {
      const error = TFirebaseError();
      log(error.message);
    }
  }

  Future<String?> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      final error = TFirebaseError.code(e.code);
      return error.message;
    } catch (e) {
      log(e.toString());
      const error = TFirebaseError();
      return error.message;
    }
    return null;
  }
}