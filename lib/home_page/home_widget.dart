import 'package:reminder_app_ui/constant/color_constant.dart';

import 'package:reminder_app_ui/constant/text_widget.dart';
import 'package:reminder_app_ui/constant/widget_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeWidget {
  Widget counterWidget({required String title, required VoidCallback onTap, required String totalCount}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: cardPadding(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0.w),
                    child: Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: onTap,
                        icon: const Icon(
                          Icons.more_vert_rounded,
                          color: AppColors.white,
                        )),
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    totalCount,
                    style: GoogleFonts.poppins(color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 100.sp, height: 1.2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget topCardUI() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 5.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Reminders",
                  style: GoogleFonts.poppins(color: AppColors.black, fontWeight: FontWeight.w700, fontSize: 18.sp),
                ),
                Text(
                  "Next 3 upcoming reminders are here",
                  style: GoogleFonts.poppins(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              print("Icon Pressed");
            },
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget upComingCardUI({required String time, required Color color, required String description}) {
    return cardPadding(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          largeNumber(time, color: color),
          widthBox(10),
          Expanded(
            child: bigTitleTextWidget(
              description,
              maxLine: 2,
              textOverflow: TextOverflow.ellipsis,
              color: color,
              fontWeight: FontWeight.w700,
            ),
          ),
          forwardIcon(
            onTap: () {},
            color: color,
          )
        ],
      ),
    );
  }
}
