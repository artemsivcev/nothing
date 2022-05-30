import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/current_device_settings_controller.dart';

class InEarWidget extends StatelessWidget {
  const InEarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'inear_detect'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
              Text(
                'inear_detect_desc'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        GetX<CurrentDeviceSettingController>(builder: (controller) {
          return CupertinoSwitch(
            value: controller.inEarDetect.value,
            activeColor: context.theme.colorScheme.secondary,
            onChanged: (bool value) {
              controller.toggleInEarDetect();
            },
          );
        }),
      ],
    );
  }
}
