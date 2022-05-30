import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';
import '../../../../../data/constants/text_styles.dart';
import '../../../controllers/devices_controller.dart';
import '../../../controllers/open_widgets_controller.dart';
import '../common/animated_arrow.dart';
import '../common/ink_well.dart';

class MyDeviceButtonWidget extends GetView<DevicesController> {
  MyDeviceButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<OpenWidgetsController>().toggleMyDevices(),
      child: Row(
        children: [
          Text(
            "my_devices".tr,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: AppTheme.topTextColor,
              fontSize: 28,
            ),
          ),
          GetX<DevicesController>(builder: (controller) {
            return AnimatedArrow(
              isOpen: Get.find<OpenWidgetsController>().isDevicesOpen.value,
              size: 32,
            );
          })
        ],
      ),
    );
  }
}
