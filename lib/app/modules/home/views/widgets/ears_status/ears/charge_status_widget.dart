import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/text_styles.dart';
import 'dots_charge_info.dart';

class ChargeStatusWidget extends StatelessWidget {
  ChargeStatusWidget({
    Key? key,
    required this.type,
    required this.chargePercentage,
    this.isLeft = false,
  }) : super(key: key);

  String type = "C";
  int chargePercentage = 100;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              type,
              style: ndotPrimaryW100S20.copyWith(
                color: AppTheme.topTextColor,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "$chargePercentage%",
              style: ndotPrimaryW100S20.copyWith(
                color: AppTheme.topTextColor,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        DotsChargeInfo(charge: chargePercentage),
      ],
    );
  }
}
