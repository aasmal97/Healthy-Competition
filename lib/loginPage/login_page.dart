import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final loginButton = FloatingActionButton.extended(
      onPressed: () {},
      label: const Text('Sign in'),
    );
    final signUpButton = FloatingActionButton.extended(
        onPressed: () {}, label: const Text('Join us'));
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [signUpButton, loginButton],
          ),
        ));
  }
}
