import 'package:get/get.dart';

import 'current_device_settings_controller.dart';

class OpenWidgetsController extends GetxController {
  RxBool isUserLoginOpen = false.obs;

  void toggleUserLogin() {
    isDevicesOpen.value = false;
    isSettingsOpen.value = false;
    isUserLoginOpen.toggle();
  }

  RxBool isDevicesOpen = false.obs;

  void toggleMyDevices() {
    isUserLoginOpen.value = false;
    isSettingsOpen.value = false;
    isDevicesOpen.toggle();
  }

  RxBool isSettingsOpen = false.obs;

  void toggleSettings() {
    isDevicesOpen.value = false;
    isUserLoginOpen.value = false;
    isSettingsOpen.toggle();
  }

  closeSettings() {
    isUserLoginOpen.value = false;
    isDevicesOpen.value = false;
    isSettingsOpen.value = false;
  }

  final isTripleTapOpen = false.obs;
  final isTapHoldOpen = false.obs;

  toggleTripleTap() {
    isTapHoldOpen.value = false;
    isTripleTapOpen.toggle();
  }

  toggleTapHold() {
    isTripleTapOpen.value = false;
    isTapHoldOpen.toggle();
  }

  final isEqualizerOpen = false.obs;

  toggleEqualizer() {
    isEqualizerOpen.toggle();
  }

  closeEarSettings() {
    isTripleTapOpen.value = false;
    isTapHoldOpen.value = false;
    isEqualizerOpen.value = false;
  }
}
