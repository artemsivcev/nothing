import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';

class SigninTitle extends StatelessWidget {
  const SigninTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Text(
      "sign_in".tr,
      textAlign: TextAlign.start,
      style: ndotPrimaryW100S20.copyWith(
        color: context.theme.colorScheme.onPrimary,
        fontSize: 24,
      ),
    );
  }
}
