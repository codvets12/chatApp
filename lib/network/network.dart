import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_check/model/user_model.dart';
import 'package:flutter/cupertino.dart';

class Network {
  final firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<UserModel> Register({
    required UserModel model,
    required String password,
  }) async {
    try {
      final UserCredential creds =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: model.email,
        password: password,
      );
      model.uid = creds.user!.uid;
      firestore.collection("users").doc(creds.user!.uid).set(model.tojson());
      return model;
    } on FirebaseAuthException catch (error, stk) {
      throw FirebaseException(plugin: "firebase", message: "error:$error");
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
