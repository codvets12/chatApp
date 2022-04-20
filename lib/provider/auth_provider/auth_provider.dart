import 'package:flutter/cupertino.dart';

import '../../routes/routes.dart';

class AuthProvider with ChangeNotifier {
  // final GoogleSignIn _googleAuth = GoogleSignIn(scopes: ["email"]);
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
      Navigator.pushReplacementNamed(context, Routes.authenticationscreen);
    });
  }

  // Future<void> loginwithGoogle(BuildContext context) async {
  //   final googleUser = await _googleAuth.signIn();
  //   if (googleUser != null) {
  //     final googleAuthCredential = await googleUser.authentication;
  //     final AuthCredential credentials = GoogleAuthProvider.credential(
  //         idToken: googleAuthCredential.idToken,
  //         accessToken: googleAuthCredential.accessToken);
  //     final UserCredential _userCredentials =
  //         await FirebaseAuth.instance.signInWithCredential(credentials);
  //   }
  // }
}
