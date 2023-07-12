import 'package:flutter/material.dart';
import 'package:healthy_competition_app/utilities/btn_styles.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final loginButton = GeneralButton(
      buttonText: "Sign In",
      onPressed: () {},
      buttonType: ButtonType.primary,
    );
    final signUpButton = GeneralButton(
        buttonText: "Join Us", onPressed: () {}, buttonType: ButtonType.tonal);
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
