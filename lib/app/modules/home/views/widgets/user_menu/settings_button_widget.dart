import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';
import '../../../../../data/constants/text_styles.dart';
import '../../../controllers/app_settings_controller.dart';
import '../../../controllers/open_widgets_controller.dart';
import '../common/animated_arrow.dart';
import '../common/ink_well.dart';

class SettingsButtonWidget extends GetView<AppSettingsController> {
  SettingsButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<OpenWidgetsController>().toggleSettings(),
      child: Row(
        children: [
          Text(
            "settings".tr,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: AppTheme.topTextColor,
              fontSize: 28,
            ),
          ),
          GetX<AppSettingsController>(builder: (controller) {
            return AnimatedArrow(
              isOpen: Get.find<OpenWidgetsController>().isSettingsOpen.value,
              size: 32,
            );
          })
        ],
      ),
    );
  }
}
