import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import 'find_buds_play_pause_widget.dart';

class FindBudsWidget extends StatelessWidget {
  const FindBudsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'find_earbyds'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 18,
                ),
              ),
              Text(
                'find_earbyds_desc'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onPrimary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const FindBudsPlayPauseWidget(),
      ],
    );
  }
}
