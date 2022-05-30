import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/current_device_settings_controller.dart';
import '../../common/ink_well.dart';

class ForgetDeviceWidget extends StatelessWidget {
  const ForgetDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => {Get.find<CurrentDeviceSettingController>().forgetDevice()},
      child: Text(
        'forget_device'.tr,
        style: spaceGroteskPrimaryW200S12.copyWith(
          color: context.theme.colorScheme.secondary,
          fontSize: 18,
        ),
      ),
    );
  }
}
