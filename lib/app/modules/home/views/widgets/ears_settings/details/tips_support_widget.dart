import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/current_device_settings_controller.dart';
import '../../common/ink_well.dart';

class TipSupportWidget extends StatelessWidget {
  const TipSupportWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<CurrentDeviceSettingController>().goToTipsAndSupportPage(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'tips_support'.tr,
              style: spaceGroteskPrimaryW200S12.copyWith(
                color: context.theme.colorScheme.onPrimary,
                fontSize: 18,
              ),
            ),
          ),
          Icon(
            Icons.navigate_next_rounded,
            color: context.theme.colorScheme.onPrimary,
            size: 32,
          )
        ],
      ),
    );
  }
}
