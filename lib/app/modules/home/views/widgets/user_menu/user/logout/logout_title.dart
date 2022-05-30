import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';

class LogoutTitle extends StatelessWidget {
  const LogoutTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "profile".tr,
      textAlign: TextAlign.start,
      style: ndotPrimaryW100S20.copyWith(
        color: context.theme.colorScheme.onPrimary,
        fontSize: 24,
      ),
    );
  }
}
