import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/signin/singin_button.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/signin/singin_google_button.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/signin/singin_text_field.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/user/signin/singup_button.dart';

import '../../../../../../data/constants/text_styles.dart';
import 'signin/singin_title.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SigninTitle(),
        const SizedBox(
          height: 12,
        ),
        const SigninTextField(),
        const SizedBox(
          height: 12,
        ),
        const SigninButton(),
        const SizedBox(
          height: 24,
        ),
        const SignupButton(),
        const SizedBox(
          height: 24,
        ),
        Center(
          child: Text(
            '- ${'or'.tr} -',
            style: spaceGroteskPrimaryW200S12.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const SigninGoogleButton(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
