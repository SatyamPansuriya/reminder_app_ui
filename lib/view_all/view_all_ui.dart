import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:reminder_app_ui/constant/animation_constant.dart';
import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:reminder_app_ui/view_all/view_all_controller.dart';
import 'package:reminder_app_ui/view_all/view_all_widget.dart';

class ViewAllUI extends StatelessWidget {
  ViewAllUI({super.key});

  final viewAllController = Get.put(ViewAllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPadding(
        child: SafeArea(
          child: Column(
            children: [
              /// Header Widgets
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeSlideTransition(
                      x: -150,
                      y: -150,
                      duration: 700,
                      isStart: true,
                      child: forwardIcon(
                          onTap: () {
                            Get.back();
                          },
                          isRight: false,
                          backGroundColor: AppColors.lightGrey)),
                  miniTitleTextWidget("Your All Reminders"),
                  FadeSlideTransition(
                      x: 150,
                      y: -150,
                      duration: 700,
                      isStart: true,
                      child: actionIconButton(icon: Icons.menu, onTap: () {}, buttonColor: AppColors.lime, iconColor: AppColors.black))
                  // textWidget("Add New Reminder"),
                ],
              ),
              heightBox(30),
              Container(
                height: 45.h,
                margin: EdgeInsets.only(bottom: 15.h),
                child: FadeSlideTransition(
                  x: 150,
                  y: 0,
                  duration: 700,
                  isStart: true,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Obx(() {
                        return GestureDetector(
                          key: ValueKey('GestureDetector_$index'),
                          onTap: () {
                            viewAllController.isSelectedIndex.value = index;
                          },
                          child: AnimatedContainer(
                            key: ValueKey<int>(index),
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                                color: AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(
                                    width: viewAllController.isSelectedIndex.value == index ? 1 : 0,
                                    color: viewAllController.isSelectedIndex.value == index ? AppColors.orange : AppColors.transparent)),
                            child: miniTitleTextWidget(viewAllController.filterList[index]),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
              FadeSlideTransition(x: 0, y: 150, duration: 700, isStart: true, child: ViewAllWidgets().cardDesign())
            ],
          ),
        ),
      ),
    );
  }
}
