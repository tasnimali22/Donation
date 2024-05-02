
import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Nav_button/Nav_botton.dart';

class Chairtycontroller extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds:3),() {
      Get.to(Bottom_NavBar());
    });
  }
}

