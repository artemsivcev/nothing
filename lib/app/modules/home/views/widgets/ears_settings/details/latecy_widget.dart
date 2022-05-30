import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/current_device_settings_controller.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../common/custom_radiobutton_with_text.dart';

class LatencyWidget extends StatelessWidget {
  const LatencyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'latency_mode'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
        Text(
          'latency_mode_desc'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 70,
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
                      onClick: controller.selectNormalLatency,
                      isActive: controller.isLowLatency.value,
                      bottomText: "normal_latency".tr,
                    ),
                    CustomRadioButtonWithText(
                      onClick: controller.selectLowLatency,
                      isActive: !controller.isLowLatency.value,
                      bottomText: "low_latency".tr,
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "low_latency_desc_1".tr,
          textAlign: TextAlign.start,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "low_latency_desc_2".tr,
          textAlign: TextAlign.start,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
