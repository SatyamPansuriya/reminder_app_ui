import 'package:reminder_app_ui/constant/color_constant.dart';
import 'package:reminder_app_ui/constant/const_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  DateTime now = DateTime.now();

  List<Color> colors = [
    AppColors.white,
    AppColors.lime,
    AppColors.black,
    AppColors.orange,
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  Color chooseColor(int value) {
    if (value == 2) {
      return AppColors.white;
    }
    return AppColors.black;
  }
}
