import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaler_mobile/pages/register/bloc/registerBloc.dart';
import 'package:scaler_mobile/pages/register/bloc/registerEvent.dart';
import 'package:scaler_mobile/pages/register/bloc/registerState.dart';
import 'package:scaler_mobile/pages/signIn/widgets/sign_in.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<registerBloc, RegisterState>(builder: (context, state) {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: customAppBar("Register"),
            body: SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                reusableText("Enter your detail and login to your account"),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                  child: Column(
                    children: [
                      reusableTextField("username", "user", "person(1)",
                          (value) {
                        context.read<registerBloc>().add(userEvent(value));
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      reusableTextField("Email", "Email", "person(1)", (value) {
                        context.read<registerBloc>().add(emailEvent(value));
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      reusableTextField("Password", "password", "lock",
                          (value) {
                        context.read<registerBloc>().add(passwordEvent(value));
                      }),
                      SizedBox(
                        height: 20.h,
                      ),
                      reusableTextField(
                          "re enter the Password", "password", "lock", (value) {
                        context
                            .read<registerBloc>()
                            .add(rePasswordEvent(value));
                      }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
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
