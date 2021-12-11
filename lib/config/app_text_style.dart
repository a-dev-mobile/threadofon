// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../core/constants/colors.dart';

abstract class AppTextStyle {
  // static final BuildContext _context = AppGlobal.getContext();

  static TextStyle H3_BOLD([Color? colorText]) {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        color: colorText,
        letterSpacing: 0.15);
  }
  
  static TextStyle H3_REGULAR([Color? colorText]) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 20.sp,
        color: colorText,
        letterSpacing: 0.15);
  }

  static TextStyle H2({Color? colorText}) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 25.sp,
        color: colorText,
        height: 1.25);
  }

  static TextStyle BODY_SEMI_BOLD({Color? colorText}) {
    return TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        color: colorText,
        height: 1.5);
  }

  static TextStyle LABEL_EXTRA_BOLD({Color? colorText}) {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 16.sp, color: colorText);
  }

  static TextStyle LABEL_REGULAR([Color? colorText]) {
    return TextStyle(
        fontWeight: FontWeight.normal, fontSize: 12.sp, color: colorText);
  }
  static TextStyle LABEL_SEMI_BOLD([Color? textColor]) {
    return TextStyle(
        fontWeight: FontWeight.w600, fontSize: 12.sp, color: textColor);
  }
  static TextStyle BUTTON() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15.sp,
      letterSpacing: 1.25,
    );
  }

  static TextStyle CAPTION([Color? colorText]) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
        letterSpacing: 0.2,
        color: colorText);
  }

  static TextStyle BODY_REGULAR([Color? colorText]) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16.sp,
        color: ConstColor.neutral_grey_800);
  }
}
