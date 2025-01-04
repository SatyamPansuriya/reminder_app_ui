import 'package:get/get.dart';

class ViewAllController extends GetxController {
  DateTime now = DateTime.now();
  List<String> filterList = ["All", "Upcoming", "Past"];
  RxInt isSelectedIndex = 0.obs;

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
}
