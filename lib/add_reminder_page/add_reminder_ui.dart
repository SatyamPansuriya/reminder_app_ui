import 'package:reminder_app_ui/add_reminder_page/add_reminder_controller.dart';
import 'package:reminder_app_ui/add_reminder_page/add_reminder_widget.dart';
import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/const_functions.dart';
import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddReminder extends StatelessWidget {
  AddReminder({super.key});

  final AddReminderController controller = Get.put(AddReminderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screenPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    forwardIcon(
                        onTap: () {
                          Get.back();
                        },
                        isRight: false,
                        backGroundColor: AppColors.lightGrey),
                    miniTitleTextWidget("Add New Reminder"),
                    actionIconButton(icon: Icons.done, onTap: () {}, buttonColor: AppColors.lime, iconColor: AppColors.black)
                    // textWidget("Add New Reminder"),
                  ],
                ),
                heightBox(15),
                AddReminderWidget().selectionButton(fullDate(controller.now), icon: Icons.calendar_month_outlined, backgroundColor: AppColors.orange),
                AddReminderWidget().selectionButton("Select Time", icon: Icons.watch_later_outlined, backgroundColor: AppColors.lime),
                AddReminderWidget().selectionButton("Priority", icon: Icons.low_priority, backgroundColor: AppColors.white),
                AddReminderWidget().textEditor(),
                heightBox(10.h),
                Container(
                  width: double.infinity,
                  height: 110.h,
                  padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w, bottom: 10.h),
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 25.h,
                            height: 25.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            child: const Icon(
                              Icons.tag,
                              color: AppColors.black,
                            ),
                          ),
                          widthBox(15.w),
                          miniTitleTextWidget("Add Hashtags"),
                        ],
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10.h),
                            height: 38.h,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
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
                                      Icon(Icons.tag, color: AppColors.black, size: 17.sp),
                                      miniTitleTextWidget("one", color: AppColors.black),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
