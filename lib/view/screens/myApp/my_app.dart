import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume_builder_app/utills/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResumeBuildApp extends StatelessWidget {
  const ResumeBuildApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    log("Height : ${size.height}");
    log("Width : ${size.width}");
    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
      minTextAdapt: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routes.myroutes,
        );
      },
    );
  }
}
