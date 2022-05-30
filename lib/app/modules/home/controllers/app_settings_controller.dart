import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';

class AppSettingsController extends GetxController {
  ///settings
  ///
  String appVersion = "0.0.42";

  RxBool isDarkTheme = true.obs;

  void toggleDarkTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }

  goToFeedback() {}

  goToAgreement() {}

  goToPolicy() {}

  RxBool isJoinPlan = false.obs;

  void toggleJoinPlan() {
    isJoinPlan.value = !isJoinPlan.value;
  }

  goToPlanDetails() {}
}
