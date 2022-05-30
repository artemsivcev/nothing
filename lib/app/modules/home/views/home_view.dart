import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/device_veiw_main_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/settings_main_widget.dart';

import '../controllers/devices_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetX<DevicesController>(builder: (controller) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: DeviceViewMainWidget(),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: !controller.isPairNew.value ? 640 : 0,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SettingsMainWidget(),
              ),
            ),
          ],
        );
      }),
    );
  }
}
