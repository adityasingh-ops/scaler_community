import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar customAppBar(String heading) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text("Sign In",
        style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal)),
    centerTitle: true,
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          height: 1.0,
        )),
  );
}

Widget buildThirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIcon("google"),
        _buildIcon("apple"),
        _buildIcon("facebook"),
      ],
    ),
  );
}

Widget _buildIcon(String icon) {
  return SizedBox(
    width: 40.w,
    height: 40.h,
    child: Center(
      child: Image.asset(
        "assets/icons/$icon.png",
      ),
    ),
  );
}

Widget reusableText(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
        color: Colors.grey.withOpacity(0.5)),
  );
}

Widget reusableTextField(String hintText, String boxtype, String iconname) {
  return Container(
    margin: EdgeInsets.only(left: 20.w, right: 20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          boxtype,
          style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        ),
        SizedBox(
          height: 3.h,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Container(
              margin: EdgeInsets.only(left: 10.w),
              padding: EdgeInsets.all(5.r),
              height: 20.h,
              width: 20.w,
              // decoration: BoxDecoration(
              //   color: Colors.red,
              //   borderRadius: BorderRadius.circular(50.r),
              // ),
              child: Image.asset(
                "assets/icons/$iconname.png",
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: Colors.grey.withOpacity(0.5)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            hintTextDirection: TextDirection.ltr,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: const BorderSide(color: Colors.black),
            ),
            hoverColor: Colors.grey.withOpacity(0.5),
          ),
          autocorrect: false,
          keyboardType: TextInputType.multiline,
          maxLines: 1,
          style: TextStyle(
              fontSize: 14.sp,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              color: Colors.black),
          obscureText: hintText == "Password" ? true : false,
        ),
      ],
    ),
  );
}

Widget forgotPassword() {
  return Container(
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {
        // to be implemented
      },
      child: Text(
        "Forgot Password?",
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.normal,
          color: Colors.black,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
        ),
      ),
    ),
  );
}

Widget buildRegistrationandLoginButton(String text) {
  return GestureDetector(
      onTap: () {
        // to be implemented
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ));
}
