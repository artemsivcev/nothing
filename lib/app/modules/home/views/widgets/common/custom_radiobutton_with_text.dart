import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';
import '../../../../../data/constants/text_styles.dart';
import 'ink_well.dart';

class CustomRadioButtonWithText extends StatelessWidget {
  CustomRadioButtonWithText({Key? key, required this.onClick, required this.isActive, required this.bottomText})
      : super(key: key);

  Function onClick;
  bool isActive;
  String bottomText;

  @override
  Widget build(BuildContext context) {
    return InkWellTransparent(
      onTap: () => onClick(),
      child: SizedBox(
        height: 70,
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: isActive ? context.theme.colorScheme.secondary : context.theme.colorScheme.surface,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    color: isActive ? AppTheme.topTextColor :context.theme.colorScheme.onSurface,
                    shape: BoxShape.circle,
                  ),
                ),
                isActive
                    ? Container()
                    : Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: context.theme.colorScheme.surface,
                          shape: BoxShape.circle,
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              bottomText,
              textAlign: TextAlign.center,
              style: spaceGroteskPrimaryW200S12.copyWith(
                color: context.theme.colorScheme.onPrimary,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
