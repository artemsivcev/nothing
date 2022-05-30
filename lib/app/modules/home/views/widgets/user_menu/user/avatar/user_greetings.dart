import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/colors.dart';
import '../../../../../../../data/constants/text_styles.dart';

class UserGreetings extends StatelessWidget {
  const UserGreetings({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: RichText(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        text: TextSpan(
          text: "hey".tr,
          style: spaceGroteskPrimaryW200S12.copyWith(
            color: AppTheme.topTextColor,
            fontSize: 24,
          ),
          children: <TextSpan>[
            TextSpan(
              text: name,
              style: spaceGroteskPrimaryW200S12.copyWith(
                color: AppTheme.topTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
