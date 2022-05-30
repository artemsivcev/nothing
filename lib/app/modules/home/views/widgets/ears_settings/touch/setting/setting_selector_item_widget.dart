import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/text_styles.dart';

class SettingSelectorElementWidget extends StatelessWidget {
  SettingSelectorElementWidget({
    Key? key,
    required this.name,
    required this.isSelected,
  }) : super(key: key);

  String name;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: isSelected ? const BorderRadius.all(Radius.circular(8)) : null,
        color: isSelected ? context.theme.colorScheme.secondary : Colors.transparent,
      ),
      duration: const Duration(milliseconds: 200),
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
            Icon(
              Icons.check_rounded,
              size: 26,
              color: isSelected ? context.theme.colorScheme.onSecondary : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
