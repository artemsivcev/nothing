import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/devices_controller.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/devices/pair_new_widget.dart';

import '../../../../controllers/open_widgets_controller.dart';
import '../../common/ink_well.dart';
import 'devices_widget.dart';

class DeviceListWidget extends StatefulWidget {
  DeviceListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DeviceListWidget> createState() => _DeviceListWidgetState();
}

class _DeviceListWidgetState extends State<DeviceListWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<DevicesController>(builder: (controller) {
      var devs = controller.pairedDeviceList;
      if (Get.find<OpenWidgetsController>().isDevicesOpen.value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      var listHeight = 70.0 * devs.length;
      if (listHeight > 300) {
        listHeight = 300;
      }
      return Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SizeTransition(
          sizeFactor: _controller,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: context.theme.colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: listHeight,
                    width: 350,
                    child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: devs.length,
                      itemBuilder: (context, index) {
                        return InkWellTransparent(
                          onTap: () => controller.selectDevice(index),
                          child: DeviceWidget(
                            device: devs[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const PairNewWidget(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
