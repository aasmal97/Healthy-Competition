import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final loginButton = FloatingActionButton.extended(
        onPressed:() {},
        label: const Text('Sign in'),
        // icon: Image.asset(
        //   'assets/images/google_logo.png',
        //   width: 32,
        //   height: 32,
        // ),
        // backgroundColor: ,
        // foregroundColor: Colors.black,
      );
    final signUpButton = FloatingActionButton.extended(
        onPressed:() {},
        label: const Text('Join us'),
        // icon: Image.asset(
        //   'assets/images/google_logo.png',
        //   width: 32,
        //   height: 32,
        // ),
      );
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      // body: Center(
      //     child: ),
    );
  }
}
