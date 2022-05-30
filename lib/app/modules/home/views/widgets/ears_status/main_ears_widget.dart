import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/devices_controller.dart';

import '../../../controllers/current_device_settings_controller.dart';
import 'ears/charge_status_widget.dart';
import 'ears/ears_logo_widget.dart';
import 'ears/ears_pic_widget.dart';

class MainEarsWidget extends StatelessWidget {
  const MainEarsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CurrentDeviceSettingController>(builder: (controller) {
      bool isShowEars = controller.isConnected;
      if (Get.find<DevicesController>().isPairNew.value) {
        isShowEars = false;
      }
      return SizedBox(
        width: 640,
        child: Stack(
          children: [
            isShowEars ? Positioned(
              top: 75,
              left: 30,
              child: Align(
                alignment: Alignment.topLeft,
                child: EarsLogoWidget(
                  deviceName: controller.selectedDevice.value?.name ?? 'device_name'.tr,
                ),
              ),
            ) : Container(),
            Align(
                alignment: Alignment.center,
                child: EarsPicWidget(
                  isBlack: controller.selectedDevice.value?.isBlack ?? false,
                  isConnected: isShowEars,
                )),
            isShowEars
                ? Positioned(
                    top: 100,
                    right: 100,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: ChargeStatusWidget(
                        type: 'R',
                        chargePercentage: controller.selectedDevice.value?.right.charge ?? 0,
                      ),
                    ),
                  )
                : Container(),
            isShowEars
                ? Positioned(
                    bottom: 100,
                    left: 100,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ChargeStatusWidget(
                        type: 'L',
                        chargePercentage: controller.selectedDevice.value?.left.charge ?? 0,
                        isLeft: true,
                      ),
                    ),
                  )
                : Container(),
            isShowEars
                ? Positioned(
                    bottom: 50,
                    right: 50,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ChargeStatusWidget(
                          type: 'C', chargePercentage: controller.selectedDevice.value?.caseCharge ?? 0),
                    ),
                  )
                : Container(),
          ],
        ),
      );
    });
  }
}
