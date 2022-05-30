import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/open_widgets_controller.dart';
import '../../../../controllers/user_controller.dart';
import 'logout_widget.dart';
import 'signin_widget.dart';

class UserLoginWidget extends StatefulWidget {
  UserLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<UserLoginWidget> createState() => _UserLoginWidgetState();
}

class _UserLoginWidgetState extends State<UserLoginWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetX<UserController>(builder: (controller) {
      if (Get.find<OpenWidgetsController>().isUserLoginOpen.value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      var userLoginHeight = 250.0;
      if (!controller.isUserLoggedIn.value) {
        userLoginHeight = 290;
      }
      return Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SizeTransition(
          sizeFactor: _controller,
          child: Container(
            width: 350,
            height: userLoginHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: context.theme.colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: !controller.isUserLoggedIn.value ? const SigninWidget() : const LogoutWidget(),
            ),
          ),
        ),
      );
    });
  }
}
