import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../../../controllers/user_controller.dart';

class SigninTextField extends StatelessWidget {
  const SigninTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) => {
        Get.find<UserController>().updateUserLogin(text),
      },
      decoration: InputDecoration(
        fillColor: context.theme.colorScheme.surface,
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: 'email'.tr,
        hintStyle: spaceGroteskPrimaryW200S12.copyWith(
          color: context.theme.colorScheme.onSurface,
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.all(16.0),
        isCollapsed: true,
        focusColor: null,
        errorBorder: null,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedErrorBorder: null,
        disabledBorder: null,
        enabledBorder: null,
        hoverColor: null,
      ),
      style: spaceGroteskPrimaryW200S12.copyWith(
        color: context.theme.colorScheme.onSurface,
        fontSize: 14,
      ),
      cursorColor: context.theme.colorScheme.secondary,
    );
  }
}
