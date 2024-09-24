import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaler_mobile/pages/register/bloc/registerBloc.dart';
import 'package:scaler_mobile/pages/register/register.dart';
import 'package:scaler_mobile/pages/signIn/bloc/signin_bloc.dart';
import 'package:scaler_mobile/pages/signIn/sign_in.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_bloc.dart';
import 'package:scaler_mobile/pages/welcome/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WelcomeBloc(),
          ),
          BlocProvider(
            create: (context) => signinBloc(),
          ), 
          BlocProvider(
            create: (context) => registerBloc(),
          ), 
        ],
        child: ScreenUtilInit(
          builder: (context, builder) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const Welcome(),
            routes: {
              'homeroutes': (context) => const Home(),
              'signInpage': (context) => const SignIn(),
              'registerpage': (context) => const Register(),
            },
          ),
        ));
  }
}
