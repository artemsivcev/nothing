import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ears_settings_list_widget.dart';

class EarsSettingsListBackground extends StatelessWidget {
  EarsSettingsListBackground({Key? key, required this.tabController}) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 685,
      width: 130,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                border: Border.all(color: context.theme.colorScheme.primary, width: 10),
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: context.theme.colorScheme.primary, width: 10),
                color: Colors.transparent,
              ),
            ),
          ),
          EarsSettingsListWidget(
            tabController: tabController,
          ),
        ],
      ),
    );
  }
}
