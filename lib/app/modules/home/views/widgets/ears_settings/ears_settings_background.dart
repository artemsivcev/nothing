import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch_settings_widget.dart';

import 'details_settings_widget.dart';
import 'hear_settings_widget.dart';

class EarsSettingsBackground extends StatelessWidget {
  EarsSettingsBackground({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 478,
      height: 685,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
        color: context.theme.colorScheme.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [
            DetailsSettingsWidget(),
            TouchSettingsWidget(),
            HearSettingsWidget(),
          ],
        ),
      ),
    );
  }
}
