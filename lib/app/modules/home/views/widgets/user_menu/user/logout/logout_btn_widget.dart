import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/colors.dart';
import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';
import '../../../common/ink_well.dart';

class LogoutBtnWidget extends StatelessWidget {
  const LogoutBtnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => {Get.find<UserController>().logout()},
      child: Text(
        'logout'.tr,
        style: spaceGroteskPrimaryW200S12.copyWith(
          color: AppTheme.red,
          fontSize: 18,
        ),
      ),
    );
  }
}
