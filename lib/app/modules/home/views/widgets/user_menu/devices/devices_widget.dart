import 'package:flutter/cupertino.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/devices/devices_icon_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/devices/devices_name_widget.dart';

import '../../../../../../data/models/device.dart';

class DeviceWidget extends StatelessWidget {
  DeviceWidget({Key? key, required this.device}) : super(key: key);

  Device device;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          DeviceIconWidget(isBlack: device.isBlack, isConnected: device.status),
          const SizedBox(
            width: 12,
          ),
          DeviceNameWidget(name: device.name, status: device.status)
        ],
      ),
    );
  }
}
