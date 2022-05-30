import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/app_settings_controller.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../common/ink_well.dart';

class JoinPlanWidget extends StatelessWidget {
  const JoinPlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'improvement_plan'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
              InkWellTransparent(
                onTap: () => {Get.find<AppSettingsController>().goToPlanDetails()},
                child: RichText(
                  text: TextSpan(
                    text: 'improvement_plan_desc_1'.tr,
                    style: spaceGroteskPrimaryW200S12.copyWith(
                      color: context.theme.colorScheme.onPrimary,
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'improvement_plan_desc_2'.tr,
                        style: spaceGroteskPrimaryW200S12.copyWith(
                          color: context.theme.colorScheme.secondary,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: spaceGroteskPrimaryW200S12.copyWith(
                          color: context.theme.colorScheme.onPrimary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GetX<AppSettingsController>(builder: (controller) {
          return CupertinoSwitch(
            value: controller.isJoinPlan.value,
            activeColor: context.theme.colorScheme.secondary,
            onChanged: (bool value) {
              controller.toggleJoinPlan();
            },
          );
        }),
      ],
    );
  }
}
