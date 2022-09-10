import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/utils/colors.dart';

class AppTheme {
  TextTheme lightTextTheme = TextTheme(
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),
    bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        color: Colors.black.withOpacity(0.2)),
    labelSmall: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 15.sp, color: kPrimaryUtils),
    titleSmall: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 17.sp, color: Colors.black),
  );

  TextTheme darkTextTheme = TextTheme(
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w400, fontSize: 18.sp, color: Colors.black),
    bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        color: Colors.white.withOpacity(0.6)),
    labelSmall: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 15.sp, color: kPrimaryUtils),
    titleSmall: TextStyle(
        fontWeight: FontWeight.w600, fontSize: 17.sp, color: Colors.white),
  );

  ThemeData light() {
    return ThemeData(
        primaryColor: kLightPrimary,
        brightness: Brightness.light,
        textTheme: lightTextTheme,
        appBarTheme: AppBarTheme(
            color: kLightAppBar,
            centerTitle: true,
            iconTheme: IconThemeData(size: 20.sp)),
        bottomAppBarColor: kLightAppBar);
  }

  ThemeData dark() {
    return ThemeData(
        scaffoldBackgroundColor: kDarkPrimary,
        appBarTheme: const AppBarTheme(color: kDarkAppBar, centerTitle: true),
        brightness: Brightness.dark,
        textTheme: darkTextTheme,
        bottomAppBarColor: kDarkAppBar);
  }
}
