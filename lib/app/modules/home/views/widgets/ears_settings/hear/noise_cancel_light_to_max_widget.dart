import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/current_device_settings_controller.dart';
import '../../common/custom_radiobutton_with_text.dart';

class NoiseCancelLightToMax extends StatelessWidget {
  NoiseCancelLightToMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: GetX<CurrentDeviceSettingController>(builder: (controller) {
        return Stack(
          children: [
            Positioned(
              top: 10,
              child: Container(
                height: 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: context.theme.colorScheme.surface,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomRadioButtonWithText(
                  onClick: controller.selectLightCancellation,
                  isActive: controller.isLightSelected.value,
                  bottomText: "light".tr,
                ),
                CustomRadioButtonWithText(
                  onClick: controller.selectMaximumCancellation,
                  isActive: !controller.isLightSelected.value,
                  bottomText: "maximum".tr,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
