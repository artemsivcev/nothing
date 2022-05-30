import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting_widget.dart';

import '../../../../controllers/current_device_settings_controller.dart';
import '../../../../controllers/open_widgets_controller.dart';

class EqualizerWidget extends StatelessWidget {
  const EqualizerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CurrentDeviceSettingController>(builder: (controller) {
      return SettingWidget(
        title: controller.selectedDevice.value?.equalizer.name ?? "",
        subTitle: "equalizer_desc".tr,
        onToggle: Get.find<OpenWidgetsController>().toggleEqualizer,
        onSelect: controller.selectTypeOfEqualizer,
        selectedSettingName: controller.selectedDevice.value?.equalizer.selectedActionName ?? "",
        isOpen: Get.find<OpenWidgetsController>().isEqualizerOpen.value,
        actions: controller.selectedDevice.value?.equalizer.actions ?? [],
      );
    });
  }
}
