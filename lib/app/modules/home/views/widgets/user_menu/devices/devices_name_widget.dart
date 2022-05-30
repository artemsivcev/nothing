import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../../../data/models/enums/device_status.dart';

class DeviceNameWidget extends StatelessWidget {
  DeviceNameWidget({Key? key, required this.name, required this.status}) : super(key: key);

  String name;
  DeviceStatus status;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            overflow: TextOverflow.fade,
            maxLines: 1,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 22,
            ),
          ),
          Text(
            status.name,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
