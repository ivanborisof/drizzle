import 'package:flutter/material.dart';
import 'package:flutter_drizzle/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/pattern.png"),
            fit: BoxFit.fill,
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
                  "Login To Your Account",
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
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: hintColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 34.h),
                Text(
                  "Or Continue With",
                  style: TextStyle(
                    color: textBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 23.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: mainWhite,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(width: 2.w, color: borderColor),
                      ),
                      width: 170.w,
                      height: 57.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/facebook.png"),
                            width: 25.w,
                          ),
                          SizedBox(width: 13.w),
                          Text(
                            "Facebook",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: textBlack,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 26.w),
                    Container(
                      decoration: BoxDecoration(
                        color: mainWhite,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(width: 2.w, color: borderColor),
                      ),
                      width: 170.w,
                      height: 57.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/google.png"),
                            width: 25.w,
                          ),
                          SizedBox(width: 13.w),
                          Text(
                            "Google",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: textBlack,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: mainBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    )),
                SizedBox(height: 40.h),
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
                    "Login",
                    style: TextStyle(
                      color: mainWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
