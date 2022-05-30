import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/user_menu/settings/policy_widget.dart';

import '../../../../controllers/app_settings_controller.dart';
import '../../../../controllers/open_widgets_controller.dart';
import 'about_app_widget.dart';
import 'agreement_widget.dart';
import 'copyright_widget.dart';
import 'dark_theme.dart';
import 'feedback_widget.dart';
import 'join_plan.dart';

class UserSettingsWidget extends StatefulWidget {
  UserSettingsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<UserSettingsWidget> createState() => _UserSettingsWidgetState();
}

class _UserSettingsWidgetState extends State<UserSettingsWidget> with SingleTickerProviderStateMixin {
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
    return GetX<AppSettingsController>(builder: (controller) {
      if (Get.find<OpenWidgetsController>().isSettingsOpen.value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      return Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SizeTransition(
          sizeFactor: _controller,
          child: Container(
            width: 350,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: context.theme.colorScheme.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DarkThemeWidget(),
                  SizedBox(
                    height: 6,
                  ),
                  FeedbackWidget(),
                  SizedBox(
                    height: 6,
                  ),
                  PolicyWidget(),
                  SizedBox(
                    height: 6,
                  ),
                  AgreementWidget(),
                  SizedBox(
                    height: 6,
                  ),
                  JoinPlanWidget(),
                  SizedBox(
                    height: 18,
                  ),
                  AboutAppWidget(),
                  SizedBox(
                    height: 6,
                  ),
                  CopyrightWidget(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
