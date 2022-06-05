import 'package:flutter/material.dart';
import 'package:flutter_drizzle/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseGenderPage extends StatefulWidget {
  const ChooseGenderPage({Key? key}) : super(key: key);

  @override
  State<ChooseGenderPage> createState() => _ChooseGenderPageState();
}

class _ChooseGenderPageState extends State<ChooseGenderPage> {
  int genderChoose = 0; // 0 — nothing, 1 — male, 2 — female

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h),
              Center(
                child: Text(
                  "Choose your gender",
                  style: TextStyle(
                    color: textBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 36.sp,
                  ),
                ),
              ),
              SizedBox(height: 150.h),
              Stack(
                children: [
                  Visibility(
                    visible: genderChoose == 1 ? true : false,
                    child: Positioned(
                      top: 0.h,
                      left: -60.w,
                      child: SizedBox(
                        width: 300.w,
                        height: 320.h,
                        child: Image(
                          image: AssetImage("assets/blobr.png"),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: genderChoose == 2 ? true : false,
                    child: Positioned(
                      top: 0.h,
                      right: -70.w,
                      child: SizedBox(
                        width: 300.w,
                        height: 320.h,
                        child: Image(
                          image: AssetImage("assets/blobl.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 320.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () => setState(() {
                            genderChoose = 1;
                          }),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotationTransition(
                                turns: AlwaysStoppedAnimation(0.5),
                                child: Image(
                                  width: 105.w,
                                  image: AssetImage("assets/drop.png"),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Male",
                                style: TextStyle(
                                  color:
                                      genderChoose == 1 ? mainWhite : textBlack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 36.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 140.w),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () => setState(() {
                            genderChoose = 2;
                          }),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                width: 105.w,
                                image: AssetImage("assets/drop.png"),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Female",
                                style: TextStyle(
                                  color:
                                      genderChoose == 2 ? mainWhite : textBlack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 36.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 170.h),
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
                width: 176.w,
                height: 57.h,
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: mainWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
