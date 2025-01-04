import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bigTitleTextWidget(String title, {int? maxLine, TextOverflow? textOverflow, Color color = AppColors.black, FontWeight? fontWeight}) {
  return Text(
    title,
    maxLines: maxLine,
    overflow: textOverflow,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: 20.sp,
      fontWeight: fontWeight,
    ),
  );
}

Widget miniTitleTextWidget(String title, {Color color = AppColors.white, FontWeight fontWeight = FontWeight.w600}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: 16.sp,
      fontWeight: fontWeight,
    ),
  );
}

Widget subTitleTextWidget(String title, {FontWeight fontWeight = FontWeight.w600, double fontSize = 14, Color fontColor = AppColors.white}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: fontColor,
      fontWeight: fontWeight,
      fontSize: fontSize.sp,
    ),
  );
}

Widget largeNumber(String text, {Color color = AppColors.white}) {
  return Text(
    text,
    style: GoogleFonts.jost(color: color, fontSize: 60.sp, fontWeight: FontWeight.w700),
  );
}
