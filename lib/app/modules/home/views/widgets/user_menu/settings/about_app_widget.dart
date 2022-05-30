import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/images.dart';
import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/app_settings_controller.dart';

class AboutAppWidget extends StatelessWidget {
  const AboutAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          assetIconApp,
          height: 42,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'device_name'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${'version'.tr} ${Get.find<AppSettingsController>().appVersion}',
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
