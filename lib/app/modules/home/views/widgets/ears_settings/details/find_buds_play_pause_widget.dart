import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/data/constants/colors.dart';
import 'package:nothing/app/modules/home/controllers/current_device_settings_controller.dart';

import '../../common/ink_well.dart';

class FindBudsPlayPauseWidget extends StatelessWidget {
  const FindBudsPlayPauseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CurrentDeviceSettingController>(builder: (controller) {
      return InkWellTransparent(
        onTap: () => controller.toggleFindingEars(),
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          crossFadeState: controller.isFindingEarsOn.value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: Icon(
            Icons.play_circle_fill_rounded,
            color: context.theme.colorScheme.secondary,
            size: 36,
          ),
          secondChild: const Icon(
            Icons.stop_circle_rounded,
            color: AppTheme.red,
            size: 36,
          ),
        ),
      );
    });
  }
}
