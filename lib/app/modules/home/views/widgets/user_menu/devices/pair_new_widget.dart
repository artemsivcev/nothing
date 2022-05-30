import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/devices_controller.dart';
import '../../common/ink_well.dart';

class PairNewWidget extends StatelessWidget {
  const PairNewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => Get.find<DevicesController>().pairNewDevice(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.red,
              ),
              child: const Icon(
                Icons.add,
                color: AppTheme.onRed,
                size: 26,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              "pair_new".tr,
              style: spaceGroteskPrimaryW200S12.copyWith(
                color: context.theme.colorScheme.onPrimary,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
