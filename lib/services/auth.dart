import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:recycle_app/pages/home.dart';
import 'package:recycle_app/services/database.dart';

class AuthMethods {
  static final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  static bool _initialized = false;

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      if (!_initialized) {
        await _googleSignIn.initialize();
        _initialized = true;
      }

      final GoogleSignInAccount googleUser = await _googleSignIn.authenticate(
        scopeHint: const ['email', 'profile'],
      );

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;

      final GoogleSignInClientAuthorization? clientAuth =
          await _googleSignIn.authorizationClient
              .authorizationForScopes(const ['email', 'profile']);

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: clientAuth?.accessToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user == null) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Giriş yapılamadı")),
          );
        }
        return;
      }

      final Map<String, dynamic> userInfo = {
        "email": user.email ?? "",
        "name": user.displayName ?? "",
        "image": user.photoURL ?? "",
        "Id": user.uid,
      };

      await DatabaseMethods().addUserInfo(userInfo, user.uid);

      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Hata: $e")),
        );
      }
    }
  }
}
