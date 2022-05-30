import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/data/models/enums/device_status.dart';

import '../../../data/models/device.dart';
import '../../../data/models/enums/sound_cancellation_mode.dart';
import '../../../data/models/touch_setting.dart';
import 'devices_controller.dart';
import 'open_widgets_controller.dart';

class CurrentDeviceSettingController extends GetxController {
  final openWidgetsController = Get.find<OpenWidgetsController>();

  @override
  void onInit() {
    super.onInit();
    initDeviceVal();
  }

  void initDeviceVal() {
    selectNoiseCancelById(selectedDevice.value?.noiseCancellation.index ?? 0);
    inEarDetect.value = selectedDevice.value?.inEarDetection ?? false;
    isLightSelected.value = selectedDevice.value?.isMaximumCancellation ?? false;
    isLowLatency.value = selectedDevice.value?.isLowLatency ?? false;
  }

  /// touch section
  ///
  TabController? earsTabController;
  final isLeftEarSelected = true.obs;

  Rx<Device?> selectedDevice = Get.find<DevicesController>().selectedDevice;

  bool get isConnected {
    var isConnected = false;
    if (selectedDevice.value != null) {
      return selectedDevice.value!.status == DeviceStatus.connected;
    }
    return isConnected;
  }

  Ear? get selectedEar {
    var ear = Get.find<DevicesController>().selectedDevice.value?.left;
    if (!isLeftEarSelected.value) {
      ear = Get.find<DevicesController>().selectedDevice.value?.right;
    }
    return ear;
  }

  void selectEar() {
    openWidgetsController.closeEarSettings();
    isLeftEarSelected.value = !isLeftEarSelected.value;
  }

  selectActionForTripleTap(int index) {
    selectedEar?.tripleTap.toggleAction(index);
    openWidgetsController.toggleTripleTap();
  }

  selectActionForTapHold(int index) {
    selectedEar?.tapHold.toggleAction(index);
    openWidgetsController.toggleTapHold();
  }

  TouchSetting? getSettingById(int index) {
    if (index == 0) {
      return selectedEar?.tripleTap;
    } else if (index == 1) {
      return selectedEar?.tapHold;
    } else if (index == 2) {
      return selectedEar?.doubleTap;
    } else if (index == 3) {
      return selectedEar?.slide;
    }
    return NotFound();
  }

  /// hear section
  ///

  RxBool isOffSelected = false.obs;
  RxBool isCancelSelected = false.obs;

  RxBool isLightSelected = true.obs;

  selectMaximumCancellation() {
    isLightSelected.value = false;
    selectedDevice.update((val) {
      val?.isMaximumCancellation = true;
    });
  }

  selectLightCancellation() {
    isLightSelected.value = true;
    selectedDevice.update((val) {
      val?.isMaximumCancellation = false;
    });
  }

  selectTypeOfEqualizer(int index) {
    selectedDevice.value?.equalizer.toggleAction(index);
    openWidgetsController.toggleEqualizer();
  }

  selectNoiseCancelById(int index) {
    isOffSelected.value = false;
    isCancelSelected.value = false;
    if (index == 0) {
      selectedDevice.value?.noiseCancellation = SoundCancellationMode.cancel;
      isCancelSelected.value = true;
    } else if (index == 1) {
      selectedDevice.value?.noiseCancellation = SoundCancellationMode.transparency;
    } else if (index == 2) {
      selectedDevice.value?.noiseCancellation = SoundCancellationMode.off;
      isOffSelected.value = true;
    }
  }

  /// Details
  ///

  RxBool inEarDetect = false.obs;

  void toggleInEarDetect() {
    inEarDetect.toggle();
    selectedDevice.update((val) {
      val?.inEarDetection = inEarDetect.value;
    });
  }

  RxBool isLowLatency = true.obs;

  selectLowLatency() {
    isLowLatency.value = false;
    selectedDevice.update((val) {
      val?.isLowLatency = true;
    });
  }

  selectNormalLatency() {
    isLowLatency.value = true;
    selectedDevice.update((val) {
      val?.isLowLatency = false;
    });
  }

  RxBool isFindingEarsOn = false.obs;

  void toggleFindingEars() {
    isFindingEarsOn.value = !isFindingEarsOn.value;
  }

  disconnectDevice() {
    selectedDevice.update((val) {
      val?.status = DeviceStatus.disconnected;
    });
  }

  Future<void> connectDevice() async {
    selectedDevice.update((val) {
      val?.status = DeviceStatus.connecting;
    });

    await Future.delayed(Duration(seconds: 3));

    selectedDevice.update((val) {
      val?.status = DeviceStatus.connected;
    });
  }

  forgetDevice() {
    var devicesController = Get.find<DevicesController>();

    var cur = selectedDevice.value;
    selectedDevice.value?.status = DeviceStatus.notConnected;

    var index = devicesController.connectedDevices.value.indexOf(cur!);
    devicesController.connectedDevices.value.removeAt(index);

    if (devicesController.connectedDevices.isNotEmpty) {
      devicesController.selectedDevice.value = devicesController.connectedDevices.first;
    } else {
      devicesController.isPairNew.value = true;
      devicesController.startScanning();
    }
  }

  goToTipsAndSupportPage() {
    //todo add url launcher
  }
}
