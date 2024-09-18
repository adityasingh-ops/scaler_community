import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              SizedBox(
                height: 20.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                child: Column(
                  children: [
                    reusableTextField("Email", "Email", "person(1)"),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusableTextField("Password", "password", "person(1)"),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              forgotPassword(),
              SizedBox(
                height: 20.h,
              ),
              buildRegistrationandLoginButton("Login"),
              buildRegistrationandLoginButton("Register"),
            ],
          )),
        ),
      ),
    );
  }
}
