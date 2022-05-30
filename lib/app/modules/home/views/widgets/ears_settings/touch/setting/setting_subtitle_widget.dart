import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';

class SettingSubtitleWidget extends StatelessWidget {
  SettingSubtitleWidget({Key? key, required this.subTitle}) : super(key: key);

  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      textAlign: TextAlign.start,
      style: spaceGroteskPrimaryW200S12.copyWith(
        color: context.theme.colorScheme.onPrimary,
        fontSize: 18,
      ),
    );
  }
}
