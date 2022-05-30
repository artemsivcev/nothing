import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../common/ink_well.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWellTransparent(
        onTap: () => {
          //todo
        },
        child: RichText(
          text: TextSpan(
            text: 'dont_account'.tr,
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 14,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'sign_up'.tr,
                style: spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.secondary,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
