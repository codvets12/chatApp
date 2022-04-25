import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Network {
  final firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<void> Register(
      {required String email,
      required String password,
      required String name}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "week password") {
        print("Password is to weak");
      } else if (e.code == "email already exist") {
        print("Email already exist");
      }
    }
  }

  Future<void> Login({required String password, required String email}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "week password") {
        print("password is to weak");
      } else if (e.code == "email already exist") {
        print("email already exist");
      }
    }
  }
}
