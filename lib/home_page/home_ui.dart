import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reminder_app_ui/add_reminder_page/add_reminder_ui.dart';
import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/const_functions.dart';
import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:reminder_app_ui/home_page/home_controller.dart';
import 'package:reminder_app_ui/home_page/home_widget.dart';
import 'package:reminder_app_ui/view_all/view_all_ui.dart';

import 'package:stacked_listview/stacked_listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPadding(
        child: SafeArea(
          child: Column(
            children: [
              /// Header Widgets
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // dayNumber(homeController.now),
                  largeNumber(dayNumber(homeController.now)),
                  widthBox(8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        monthNameWithYear(homeController.now),
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(dayName(homeController.now), style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: AppColors.white)),
                    ],
                  ),
                  const Spacer(),
                  actionIconButton(
                    icon: Icons.add,
                    onTap: () {
                      Get.to(() => AddReminder());
                    },
                  )
                ],
              ),
              heightBox(10.h),

              /// Counter Widget
              SizedBox(
                height: 200.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeWidget().counterWidget(title: "Complete", onTap: () {}, totalCount: "14"),
                    widthBox(10),
                    HomeWidget().counterWidget(title: "Upcoming", onTap: () {}, totalCount: "20"),
                  ],
                ),
              ),

              heightBox(15.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => ViewAllUI());
                },
                child: Container(
                  height: 70.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 18.w, right: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    color: AppColors.lightGrey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All reminders",
                        style: GoogleFonts.poppins(color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
                      ),
                      forwardIcon(
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ),
              heightBox(15.h),
              Expanded(
                  child: StackedListView(
                itemCount: 15,
                builder: (_, index) {
                  int modValue = index % 4;
                  return Container(
                      height: 180.h,
                      width: Get.width,
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(top: 12.h),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22.r), color: homeController.colors[index % 4]),
                      child: index == 0
                          ? HomeWidget().topCardUI()
                          : HomeWidget().upComingCardUI(
                              time: dayNumber(homeController.now),
                              color: homeController.chooseColor(modValue),
                              description: "Brother's Birthday Reminder Wish Him"));
                },
                fadeOutFrom: 0.3,
                itemExtent: 180.h,
                heightFactor: 0.55.w,
                animateDuration: const Duration(milliseconds: 800),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
