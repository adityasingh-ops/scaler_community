import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_bloc.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_event.dart';
import 'package:scaler_mobile/pages/welcome/bloc/welcome_state.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<WelcomeBloc, WelcomeState>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  state.index = index;
                  BlocProvider.of<WelcomeBloc>(context).add(WelcomeStarted());
                },
                children: [
                  _page(1, context, "assets/images/reading.png", "Title",
                      "Description", "next"),
                  _page(2, context, "assets/images/boy.png", "Title",
                      "Description", "next"),
                  _page(3, context, "assets/images/man.png", "Title",
                      "Description", "get started"),
                ],
              ),
              Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(
                      mainAxisAlignment: MainAxisAlignment.center,
                      dotsCount: 3,
                      position: state.index,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        activeSize: Size(18.w, 8.h),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.w)),
                      ))),
            ],
          ),
        );
      },
    ));
  }

  Widget _page(int index, BuildContext context, String imageUrl, String title,
      String description, String buttonname) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Image.asset(imageUrl, fit: BoxFit.cover),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
        Container(
          padding: EdgeInsets.only(right: 30.w, left: 30.w),
          child: Text(
            description,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h, right: 25.w, left: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset:const Offset(0, 1),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              if (index < 3) {
                _controller.animateToPage(index,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.decelerate);
              } else {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("signInpage", (route) => false);
              }
            },
            child: Text(
              buttonname,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
