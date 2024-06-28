import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/utills/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.buildOption);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/splash/Resume.gif",
              height: 250.h,
              width: 250.w,
            ),
            const Spacer(),
            LinearProgressIndicator(
              minHeight: 5.sp,
              color: Colors.blue,
            )
            // Text(
            //   "Splash Screen",
            //   style: TextStyle(fontSize: 22.sp),
            // ),
          ],
        ),
      ),
    );
  }
}
