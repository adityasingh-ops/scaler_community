import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_bloc.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_event.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_state.dart';
import 'package:scaler_mobile/pages/signIn/signin_controller.dart';
import 'package:scaler_mobile/pages/signIn/widgets/sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<signinBloc, SigninState>(builder: (context, state) {
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
                      reusableTextField("Email", "Email", "person(1)", (value) {
                        context.read<signinBloc>().add(emailEvent(value));
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      reusableTextField("Password", "password", "person(1)",
                          (value) {
                        context.read<signinBloc>().add(passwordEvent(value));
                      }),
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
                buildRegistrationandLoginButton("Login", () {
                  SigninController(context).handleSignin("email");
                }),
                buildRegistrationandLoginButton("Register", () {
                  Navigator.of(context).pushNamed('registerpage');
                }),
              ],
            )),
          ),
        ),
      );
    });
  }
}
