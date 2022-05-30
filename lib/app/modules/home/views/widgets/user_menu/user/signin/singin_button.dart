import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(builder: (controller) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextButton(
          onPressed: controller.userLogin.isEmpty ? null : () => controller.login(),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(16.0),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) return context.theme.colorScheme.surface;
                return context.theme.colorScheme.secondary;
              },
            ),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return spaceGroteskPrimaryW200S12.copyWith(
                    color: context.theme.colorScheme.onSurface,
                    fontSize: 14,
                  );
                }
                return spaceGroteskPrimaryW200S12.copyWith(
                  color: context.theme.colorScheme.onSecondary,
                  fontSize: 14,
                );
              },
            ),
          ),
          child: Text(
            'continue'.tr,
          ),
        ),
      );
    });
  }
}
