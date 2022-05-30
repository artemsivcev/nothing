import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/images.dart';
import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';

class SigninGoogleButton extends StatelessWidget {
  const SigninGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(builder: (controller) {
      return Center(
        child: SizedBox(
          width: 250,
          child: ElevatedButton(
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
                  return context.theme.colorScheme.surface;
                },
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  assetIconGoogle,
                  height: 16,
                ),
                Text(
                  'sing_in_google'.tr,
                  style: spaceGroteskPrimaryW200S12.copyWith(
                    color: context.theme.colorScheme.onSurface,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
