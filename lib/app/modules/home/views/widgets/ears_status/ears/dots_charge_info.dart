import 'package:flutter/material.dart';

import '../../../../../../data/constants/colors.dart';

class DotsChargeInfo extends StatelessWidget {
  DotsChargeInfo({Key? key, required this.charge}) : super(key: key);

  int charge = 10;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          padding: const EdgeInsets.all(0.5),
          itemBuilder: (BuildContext context, int index) {
            Color dotColor = AppTheme.max;

            if (charge <= 20) {
              dotColor = AppTheme.min;
            } else if (charge <= 50) {
              dotColor = AppTheme.middle;
            }
            if (index > charge ~/ 10 - 1) {
              dotColor = AppTheme.empty;
            }
            return AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              width: 12,
              height: 12,
              decoration: BoxDecoration(shape: BoxShape.circle, color: dotColor),
            );
          }),
    );
  }
}
