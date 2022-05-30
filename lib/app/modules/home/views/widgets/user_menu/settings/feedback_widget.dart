import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/app_settings_controller.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../common/ink_well.dart';

class FeedbackWidget extends StatelessWidget {
  const FeedbackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<AppSettingsController>().goToFeedback(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'submit_feedback'.tr,
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
