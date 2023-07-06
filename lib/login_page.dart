import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
          child: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Sign in With Google'),
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
