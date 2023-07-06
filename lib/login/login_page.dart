import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    void googleSignIn() {
      GoogleSignIn().signIn();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
          child: FloatingActionButton.extended(
        onPressed: googleSignIn,
        label: const Text('Sign in with Google'),
        icon: Image.asset(
          'assets/images/google_logo.png',
          width: 32,
          height: 32,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
    );
  }
}
