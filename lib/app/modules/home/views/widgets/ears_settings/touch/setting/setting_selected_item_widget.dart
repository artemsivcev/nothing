import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';
import '../../../common/animated_arrow.dart';

class SettingSelectedItemWidget extends StatelessWidget {
  SettingSelectedItemWidget({
    Key? key,
    required this.name,
    required this.isOpen,
    this.showArrow = true,
  }) : super(key: key);

  String name;
  bool isOpen;
  bool showArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: context.theme.colorScheme.surface, width: 2),
        color: context.theme.colorScheme.surface,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              name,
              style: spaceGroteskPrimaryW200S12.copyWith(
                color: context.theme.colorScheme.onSecondary,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            showArrow ? AnimatedArrow(isOpen: isOpen) : Container(),
          ],
        ),
      ),
    );
  }
}
