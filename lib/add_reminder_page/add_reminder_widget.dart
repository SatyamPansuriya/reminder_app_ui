import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddReminderWidget {
  Widget selectionButton(String title, {required Color backgroundColor, required IconData icon}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      width: double.infinity,
      height: 65.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                size: 30.h,
              )),
          widthBox(8.w),
          bigTitleTextWidget(title, fontWeight: FontWeight.w600),
          const Spacer(),
          forwardIcon(onTap: () {}, color: AppColors.black)
        ],
      ),
    );
  }

  Widget textEditor() {
    return Container(
      height: 330.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            child: TextField(
              cursorColor: AppColors.white,
              maxLines: 1,
              style: TextStyle(color: AppColors.white, fontSize: 20.sp, fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
                hintStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp, color: AppColors.white.withOpacity(0.8)),
              ),
            ),
          ),
          heightBox(3.h),
          Divider(
            color: AppColors.white,
            thickness: 1.0.h,
          ),
          Expanded(
            child: cardPadding(
              child: TextField(
                cursorColor: AppColors.white,
                maxLines: 11,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write some description...",
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.white.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
