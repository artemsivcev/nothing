import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_status/scanning/cant_find_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_status/scanning/scan_title_widget.dart';

import '../../../controllers/devices_controller.dart';
import '../common/ink_well.dart';
import '../user_menu/devices/devices_widget.dart';
import '../common/orbit_loader_animation_widget.dart';

class PairNewLoaderWidget extends StatelessWidget {
  const PairNewLoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<DevicesController>(builder: (controller) {
      var devs = controller.foundedDevices;
      var isFound = devs.value.isNotEmpty;
      // var isFound = true;
      var listHeight = 70.0 * devs.length;
      if (listHeight > 300) {
        listHeight = 300;
      }
      return SingleChildScrollView(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 640,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ScanTitleWidget(),
                  SizedBox(
                    height: isFound ? 24 : 75,
                  ),
                  OrbitLoaderAnimationWidget(
                    isFound: isFound,
                  ),
                  SizedBox(
                    height: isFound ? 24 : 0,
                  ),
                  isFound
                      ? SizedBox(
                          height: 260,
                          width: 350,
                          child: ListView.builder(
                            controller: ScrollController(),
                            itemCount: devs.length,
                            itemBuilder: (context, index) {
                              return InkWellTransparent(
                                onTap: () => controller.addDevice(index),
                                child: DeviceWidget(
                                  device: devs[index],
                                ),
                              );
                            },
                          ),
                        )
                      : Container(),
                ],
              ),
              const CantFindWidget(),
            ],
          ),
        ),
      );
    });
  }
}
