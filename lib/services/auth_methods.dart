import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../utils/showSnackBar.dart';

class AuthMethods {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  /// sign up using email and password
  static void signUpWithEmailAndPassword({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      log("Failed with error code: ${e.code}");
      log("Failed with error message: ${e.message}");
      showSnackBar(context, e.message ?? "", false);
    } catch (e) {
      log("Error: ${e.toString()}");
      showSnackBar(context, e.toString(), false);
    }
  }

  static void sendVerificationEmail(BuildContext context) async {
    try {
      await _auth.currentUser?.sendEmailVerification();
      showSnackBar(context, "Email verification sent", true);
    } on FirebaseAuthException catch (e) {
      log("Failed with error code: ${e.code}");
      log("Failed with error message: ${e.message}");
      showSnackBar(context, e.message ?? "", false);
    } catch (e) {
      log("Error: ${e.toString()}");
      showSnackBar(context, e.toString(), false);
    }
  }

  /// sign in using email and password
  void signInWithEmailAndPassword({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      log("Failed with error code: ${e.code}");
      log("Failed with error message: ${e.message}");
      showSnackBar(context, e.message ?? "", false);
    } catch (e) {
      log("Error: ${e.toString()}");
    }
  }
}
