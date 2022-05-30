import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../data/constants/colors.dart';
import '../../../../../../../data/constants/text_styles.dart';

class EmptyAvatar extends StatelessWidget {
  const EmptyAvatar({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: ndotPrimaryW100S20.copyWith(
          color: AppTheme.onSecondary,
          fontSize: 24,
        ),
      ),
    );
  }
}
