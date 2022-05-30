import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';

class SettingTitleWidget extends StatelessWidget {
  SettingTitleWidget({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.start,
      style: spaceGroteskPrimaryW200S12.copyWith(
        color: context.theme.colorScheme.onPrimary,
        fontSize: 20,
      ),
    );
  }
}
