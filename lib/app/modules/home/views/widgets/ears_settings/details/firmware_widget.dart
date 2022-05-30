import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/current_device_settings_controller.dart';

class FirmwareWidget extends StatelessWidget {
  const FirmwareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'firmware_update'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
        GetX<CurrentDeviceSettingController>(builder: (controller) {
          return Text(
            '${'version'.tr} ${controller.selectedDevice.value?.firmware ?? ""}',
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 14,
            ),
          );
        }),
      ],
    );
  }
}
