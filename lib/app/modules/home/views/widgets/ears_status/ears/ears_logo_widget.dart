import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/text_styles.dart';

class EarsLogoWidget extends StatelessWidget {
  EarsLogoWidget({Key? key, required this.deviceName}) : super(key: key);

  String deviceName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Text(
        deviceName,
        overflow: TextOverflow.fade,
        maxLines: 2,
        style: ndotPrimaryW100S20.copyWith(
          color: AppTheme.topTextColor,
          fontSize: 42,
        ),
      ),
    );
  }
}
