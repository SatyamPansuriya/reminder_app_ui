import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:reminder_app_ui/view_all/view_all_controller.dart';

class ViewAllWidgets {
  final controller = Get.put(ViewAllController());

  Widget cardDesign() {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r), color: AppColors.lightGrey, border: Border.all(color: AppColors.orange)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: AppColors.orange,
                    border: Border.all(color: AppColors.transparent),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.5.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: miniTitleTextWidget("Satyam's Birthday", color: AppColors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          cardPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleTextWidget(DateFormat('EE d MMM, y').format(controller.now), fontWeight: FontWeight.normal),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: AppColors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15.h),
                          ),
                          child: subTitleTextWidget("Times", fontSize: 13.sp)),
                    )
                  ],
                ),
                heightBox(5.h),
                Row(
                  children: [
                    subTitleTextWidget("Priority : ", fontWeight: FontWeight.normal),
                    subTitleTextWidget("High"),
                  ],
                ),
                heightBox(10.h),
                subTitleTextWidget("This is Birth reminder description about gifts and other important things here you can also explain event plan",
                    fontWeight: FontWeight.normal, fontColor: AppColors.grey),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  height: 30.h,
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 8.w),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 2.h,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(25.r)),
                        child: Row(
                          children: [
                            Icon(Icons.tag, color: AppColors.black, size: 13.sp),
                            miniTitleTextWidget("one", color: AppColors.black, fontWeight: FontWeight.w500),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
