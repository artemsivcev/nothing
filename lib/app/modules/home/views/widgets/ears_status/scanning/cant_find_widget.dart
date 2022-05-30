import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/devices_controller.dart';
import '../../common/ink_well.dart';

class CantFindWidget extends StatelessWidget {
  const CantFindWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWellTransparent(
        onTap: () => Get.find<DevicesController>().getHelpConnection(),
        child: RichText(
          text: TextSpan(
            text: 'cant_find_device'.tr,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: AppTheme.topTextColor,
              fontSize: 12,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'get_help'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.secondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
