import 'package:flutter/material.dart';
import 'package:scaler_mobile/pages/signIn/widgets/sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: customAppBar("Sign In"),
          body: SingleChildScrollView(
              child: Column(
            children: [
              buildThirdPartyLogin(),
              reusableText("Or sign in with email"),
            ],
          )),
        ),
      ),
    );
  }
}
