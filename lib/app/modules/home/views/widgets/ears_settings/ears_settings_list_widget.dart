import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';
import '../../../../../data/constants/text_styles.dart';
import '../../../controllers/current_device_settings_controller.dart';
import '../../../controllers/open_widgets_controller.dart';

class EarsSettingsListWidget extends StatefulWidget {
  EarsSettingsListWidget({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  @override
  State<EarsSettingsListWidget> createState() => _EarsSettingsListWidgetState();
}

class _EarsSettingsListWidgetState extends State<EarsSettingsListWidget> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 130,
      child: RotatedBox(
        quarterTurns: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TabBar(
            controller: widget.tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  24.0,
                ),
                color: context.theme.colorScheme.secondary),
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                return states.contains(MaterialState.focused) ? null : Colors.transparent;
              },
            ),
            onTap: (_) => {
              Get.find<OpenWidgetsController>().closeEarSettings(),
              Get.find<CurrentDeviceSettingController>().isLeftEarSelected.value = true,
              Get.find<CurrentDeviceSettingController>().earsTabController?.animateTo(0),
            },
            tabs: [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "details".tr,
                  style: spaceGroteskPrimaryW200S12.copyWith(
                    color: AppTheme.topTextColor,
                    fontSize: 22,
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "touch".tr,
                  style: spaceGroteskPrimaryW200S12.copyWith(
                    color: AppTheme.topTextColor,
                    fontSize: 22,
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "hear".tr,
                  style: spaceGroteskPrimaryW200S12.copyWith(
                    color: AppTheme.topTextColor,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
