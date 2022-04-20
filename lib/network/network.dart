import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Network {
  final firebaseAuth = FirebaseAuth.instance;
  Future<void> Register(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "week password") {
        print("Password is to weak");
      } else if (e.code == "email already exist") {
        print("Email already exist");
      }
    }
  }
}
