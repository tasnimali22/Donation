import 'package:get/get.dart';

class ControllerNav extends GetxController {
  final currentindex = 0.obs;

  int get index => currentindex.value;

  @override
  void onInit() {
    super.onInit();
    currentindex.value =index;
    update();
  }
}