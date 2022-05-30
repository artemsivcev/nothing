import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/app_settings_controller.dart';

class DarkThemeWidget extends StatelessWidget {
  const DarkThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'dark_theme'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        GetX<AppSettingsController>(builder: (controller) {
          return CupertinoSwitch(
            value: controller.isDarkTheme.value,
            activeColor: context.theme.colorScheme.secondary,
            onChanged: (bool value) {
              controller.toggleDarkTheme();
            },
          );
        }),
      ],
    );
  }
}
