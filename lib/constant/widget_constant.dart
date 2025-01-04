import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

Widget screenPadding({required Widget child}) {
  return Padding(
    padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 10.h),
    child: child,
  );
}

Widget cardPadding({required Widget child}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: child,
  );
}

Widget heightBox(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget widthBox(double width) {
  return SizedBox(
    width: width.w,
  );
}

Widget actionIconButton({required IconData icon, required VoidCallback onTap, Color? buttonColor, Color? iconColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 55.h,
      width: 55.h,
      decoration: BoxDecoration(color: buttonColor ?? AppColors.lightGrey, shape: BoxShape.circle),
      child: Icon(icon, color: iconColor ?? AppColors.white, size: 35.h),
    ),
  );
}

Widget forwardIcon({required VoidCallback onTap, Color color = AppColors.white, Color backGroundColor = AppColors.transparent, bool isRight = true}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 55.h,
      width: 55.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: backGroundColor, shape: BoxShape.circle),
      child: Transform.rotate(
        angle: -math.pi / (isRight ? 4 : 1.35),
        child: Icon(
          Icons.arrow_forward,
          color: color,
          size: 35.h,
        ),
      ),
    ),
  );
}
