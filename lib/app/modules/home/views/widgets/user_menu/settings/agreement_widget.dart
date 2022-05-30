import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/app_settings_controller.dart';
import '../../common/ink_well.dart';

class AgreementWidget extends StatelessWidget {
  const AgreementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<AppSettingsController>().goToAgreement(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'user_agreement'.tr,
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
