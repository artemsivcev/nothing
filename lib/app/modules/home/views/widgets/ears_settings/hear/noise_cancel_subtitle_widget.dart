import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';

class NoiseCancelSubtitleWidget extends StatelessWidget {
  const NoiseCancelSubtitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 30,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'noise_cancellation'.tr,
                textAlign: TextAlign.center,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "transparency".tr,
                textAlign: TextAlign.center,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            right: 70,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "off".tr,
                textAlign: TextAlign.center,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
