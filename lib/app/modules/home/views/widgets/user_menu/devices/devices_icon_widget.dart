import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/images.dart';
import '../../../../../../data/models/enums/device_status.dart';

class DeviceIconWidget extends StatelessWidget {
  DeviceIconWidget({Key? key, required this.isBlack, required this.isConnected}) : super(key: key);

  bool isBlack;
  DeviceStatus isConnected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppTheme.iconBorder, width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(shape: BoxShape.circle, color: context.theme.colorScheme.surface),
          child: Center(
            child: Image.asset(
              !isBlack ? assetEarMinWhite : assetEarMinBlack,
              height: 26,
            ),
          ),
        ),
      ),
    );
  }
}
