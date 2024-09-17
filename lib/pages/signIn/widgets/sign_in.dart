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
