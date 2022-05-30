import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';

class NicknameWidget extends StatelessWidget {
  const NicknameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'nickname'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 18,
          ),
        ),
        Text(
          Get.find<UserController>().currentUser.value!.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
