import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_boc.dart';

class SigninController {
  final BuildContext context;
  SigninController(this.context);

  Future<void> handleSignin(String type) async {
    try {
      if (type == "email") {
        final state = context.read<signinBloc>().state;
        final email = state.email;
        final password = state.password;
        if (email.isEmpty) {
          //something
        }
        if (password.isEmpty) {
          //something
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
        } catch (e) {
          print(e);
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
