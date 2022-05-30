import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user_bar_widget.dart';

import '../../controllers/devices_controller.dart';
import 'ears_status/main_ears_widget.dart';
import 'ears_status/pair_new_loader_widget.dart';

class DeviceViewMainWidget extends StatelessWidget {
  DeviceViewMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: GetX<DevicesController>(builder: (controller) {
        return Stack(
          children: [
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: controller.isPairNew.value ? 640 : 0,
                  height: 700,
                  child: const PairNewLoaderWidget(),
                ),
                const MainEarsWidget(),
              ],
            ),
            UserBarWidget(),
          ],
        );
      }),
    );
  }
}
