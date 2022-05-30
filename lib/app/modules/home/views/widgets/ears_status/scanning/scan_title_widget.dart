import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/text_styles.dart';

class ScanTitleWidget extends StatelessWidget {
  const ScanTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 75,
        ),
        Text(
          "scanning".tr,
          style: ndotPrimaryW100S20.copyWith(
            color: AppTheme.topTextColor,
            fontSize: 56,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'scanning_desc'.tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: AppTheme.topTextColor,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
