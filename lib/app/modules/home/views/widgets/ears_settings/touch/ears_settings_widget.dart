import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting_widget.dart';

import '../../../../controllers/current_device_settings_controller.dart';
import '../../../../controllers/open_widgets_controller.dart';

class EarsSettingsWidget extends StatelessWidget {
  EarsSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 2.0),
      child: GetX<CurrentDeviceSettingController>(builder: (controller) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.815,
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SettingWidget(
                  title: controller.selectedEar?.tripleTap.name ?? "",
                  subTitle: "triple_tap_desc".tr,
                  onToggle: Get.find<OpenWidgetsController>().toggleTripleTap,
                  onSelect: controller.selectActionForTripleTap,
                  selectedSettingName: controller.selectedEar?.tripleTap.selectedActionName ?? "",
                  isOpen: Get.find<OpenWidgetsController>().isTripleTapOpen.value,
                  actions: controller.selectedEar?.tripleTap.actions ?? [],
                ),
                SettingWidget(
                  title: controller.selectedEar?.tapHold.name ?? "",
                  subTitle: "tap_hold_desc".tr,
                  onToggle: Get.find<OpenWidgetsController>().toggleTapHold,
                  onSelect: controller.selectActionForTapHold,
                  selectedSettingName: controller.selectedEar?.tapHold.selectedActionName ?? "",
                  isOpen: Get.find<OpenWidgetsController>().isTapHoldOpen.value,
                  actions: controller.selectedEar?.tapHold.actions ?? [],
                ),
                SettingWidget(
                  title: controller.selectedEar?.doubleTap.name ?? "",
                  subTitle: "",
                  selectedSettingName: controller.selectedEar?.doubleTap.selectedActionName ?? "",
                  onToggle: () => {},
                  onSelect: () => {},
                ),
                SettingWidget(
                  title: controller.selectedEar?.slide.name ?? "",
                  subTitle: "",
                  selectedSettingName: controller.selectedEar?.slide.selectedActionName ?? "",
                  onToggle: () => {},
                  onSelect: () => {},
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
