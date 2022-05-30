import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';

class EmailWidget extends StatelessWidget {
  const EmailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'email'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
        Text(
          Get.find<UserController>().currentUser.value!.email,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
