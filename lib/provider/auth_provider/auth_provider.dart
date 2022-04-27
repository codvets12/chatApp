import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_check/model/user_model.dart';
import 'package:first_check/network/network.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../routes/routes.dart';

class AuthProvider with ChangeNotifier {
  final firebaseAuth = Network();
  final GoogleSignIn _googleAuth = GoogleSignIn(scopes: ["email"]);
  int _selectedIndex = 0;
  int selectedindex = 0;
  //int _currentIndex = 0;
  void OnPageChanged(index, reason) {
    _selectedIndex = index;
  }

  void OnTappedItem(int index) {
    selectedindex = index;
  }

  Future<void> splashInit(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, Routes.authentications);
    });
  }

  Future<void> loginwithGoogle(BuildContext context) async {
    final googleUser = await _googleAuth.signIn();
    if (googleUser != null) {
      final googleAuthCredential = await googleUser.authentication;
      final AuthCredential credentials = GoogleAuthProvider.credential(
          idToken: googleAuthCredential.idToken,
          accessToken: googleAuthCredential.accessToken);
      final UserCredential _userCredentials =
          await FirebaseAuth.instance.signInWithCredential(credentials);
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.postFeed1, (route) => false);
    }
  }

  void register(BuildContext context,
      {required String name,
      required String email,
      required String password}) async {
    await firebaseAuth.Register(
      model: UserModel(name: name, email: email),
      password: password,
    );

    Navigator.pushNamedAndRemoveUntil(
        context, Routes.postFeed1, (route) => false);
  }

  void Login(BuildContext context,
      {required String email, required String password}) async {
    firebaseAuth.Login(password: password, email: email);
    Navigator.pushNamedAndRemoveUntil(
        context, Routes.postFeed1, (route) => false);
  }
}
