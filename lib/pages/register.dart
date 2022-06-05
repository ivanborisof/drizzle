import 'package:flutter/material.dart';
import 'package:flutter_drizzle/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/pattern.png"),
            fit: BoxFit.cover,
            width: 428.w,
            height: 926.h,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Image(
                  image: AssetImage("assets/logo.png"),
                  width: 411.w,
                  height: 132.h,
                ),
                SizedBox(height: 78.h),
                Text(
                  "Sign Up For Free",
                  style: TextStyle(
                    color: textBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(height: 50.h),
                Container(
                  width: 366.w,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Image(
                          width: 50.w,
                          image: AssetImage('assets/profile.png'),
                        ),
                      ),
                      filled: true,
                      fillColor: mainWhite,
                      contentPadding:
                          EdgeInsets.fromLTRB(25.w, 20.w, 0.w, 20.w),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      isCollapsed: true,
                      hintText: "Anamwp . . |",
                      hintStyle: TextStyle(
                        color: hintColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 366.w,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Image(
                          width: 50.w,
                          image: AssetImage('assets/email.png'),
                        ),
                      ),
                      filled: true,
                      fillColor: mainWhite,
                      contentPadding:
                          EdgeInsets.fromLTRB(25.w, 20.w, 0.w, 20.w),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      isCollapsed: true,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: hintColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 366.w,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Image(
                          width: 50.w,
                          image: AssetImage('assets/lock.png'),
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: Image(
                          width: 24.w,
                          image: AssetImage('assets/show.png'),
                        ),
                      ),
                      filled: true,
                      fillColor: mainWhite,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.w, 20.w, 0.w, 20.w),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide:
                            BorderSide(color: hintBorderColor, width: 1),
                      ),
                      isCollapsed: true,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: hintColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80.h),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFCADCFF),
                        const Color(0xFF6D9FFF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.0, 0.8],
                    ),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  width: 247.w,
                  height: 57.h,
                  child: Center(
                      child: Text(
                    "Create account",
                    style: TextStyle(
                      color: mainWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  )),
                ),
                SizedBox(height: 30.h),
                TextButton(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: mainBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
