import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';
import '../../../../../data/constants/text_styles.dart';
import '../../../../../data/models/enums/device_status.dart';
import '../../../controllers/current_device_settings_controller.dart';
import '../common/ink_well.dart';
import '../common/orbit_loader_animation_widget.dart';

class DeviceDisconnected extends StatelessWidget {
  DeviceDisconnected({Key? key, required this.status}) : super(key: key);

  DeviceStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 608,
      height: 685,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.theme.colorScheme.primary,
      ),
      child: status == DeviceStatus.disconnected
          ? InkWellTransparent(
              onTap: () => {Get.find<CurrentDeviceSettingController>().connectDevice()},
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(color: context.theme.colorScheme.secondary, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        "connect".tr,
                        textAlign: TextAlign.center,
                        style: spaceGroteskPrimaryW200S12.copyWith(
                          color: AppTheme.topTextColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Center(
              child: OrbitLoaderAnimationWidget(
                isFound: false,
              ),
            ),
    );
  }
}
