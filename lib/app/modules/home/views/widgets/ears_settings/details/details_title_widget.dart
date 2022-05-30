import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';

class DetailsTitleWidget extends StatelessWidget {
  const DetailsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "device_details".tr,
            style: ndotPrimaryW100S20.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontSize: 36,
            ),
          ),
        ],
      ),
    );
  }
}
