import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaler_mobile/common/entities/Widgets/flutter_toaster.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_bloc.dart';

class SigninController {
  final BuildContext context;
  SigninController(this.context);

  Future<void> handleSignin(String type) async {
    try {
      if (type == "email") {
        final state = context.read<signinBloc>().state;
        final useremail = state.email;
        final userpassword = state.password;
        if (useremail.isEmpty) {
          toastInfo(msg: "You need to fill the email address");
          return;
        }
        if (userpassword.isEmpty) {
          toastInfo(msg: "You need to fill the password");
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: useremail, password: userpassword);
          if (credential.user == null) {
            toastInfo(msg: "User not found");
            return;
          }
          if (!credential.user!.emailVerified) {
            toastInfo(msg: "You need to verify your email");
            return;
          }
          var user = credential.user;
          if (user != null) {
            print("user logged in");
          } else {
            toastInfo(msg: "Currently you are not the user of the app");
            return;
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            toastInfo(msg: "No user found for that email.");
          } else if (e.code == 'wrong-password') {
            toastInfo(msg: "Wrong password provided for that user.");
          }
        } catch (e) {
          // Handle other exceptions
          toastInfo(msg: "An unexpected error occurred: ${e.toString()}");
        }
      }
    } catch (e) {
      // Handle any exceptions that weren't caught in the inner try-catch blocks
      print("Outer exception: ${e.toString()}");
      toastInfo(msg: "An unexpected error occurred. Please try again later.");
    }
  }
}
