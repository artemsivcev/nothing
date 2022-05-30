import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/data/models/enums/device_status.dart';

import '../../controllers/current_device_settings_controller.dart';
import '../../controllers/devices_controller.dart';
import 'ears_settings/device_disconnected.dart';
import 'ears_settings/ears_settings_background.dart';
import 'ears_settings/ears_settings_list_background.dart';

class SettingsMainWidget extends StatefulWidget {
  SettingsMainWidget({Key? key}) : super(key: key);

  @override
  State<SettingsMainWidget> createState() => _SettingsMainWidgetState();
}

class _SettingsMainWidgetState extends State<SettingsMainWidget> with TickerProviderStateMixin {
  late TabController settingsController;

  @override
  void initState() {
    settingsController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 2,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    settingsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GetX<CurrentDeviceSettingController>(builder: (controller) {
        var deviceStatus = controller.selectedDevice.value?.status ?? DeviceStatus.disconnected;
        if (Get.find<DevicesController>().isPairNew.value) {
          settingsController.animateTo(0);
        }
        return AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          alignment: Alignment.center,
          crossFadeState: deviceStatus != DeviceStatus.connected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: DeviceDisconnected(
            status: deviceStatus,
          ),
          secondChild: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              EarsSettingsListBackground(
                tabController: settingsController,
              ),
              EarsSettingsBackground(
                tabController: settingsController,
              ),
            ],
          ),
        );
      }),
    );
  }
}
