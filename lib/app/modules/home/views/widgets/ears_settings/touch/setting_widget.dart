import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting/setting_subtitle_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting/setting_title_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting_item_widget.dart';

import '../../../../../../data/models/touch_action.dart';

class SettingWidget extends StatelessWidget {
  SettingWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onToggle,
    required this.onSelect,
    required this.selectedSettingName,
    this.isOpen = false,
    this.actions = const [],
  }) : super(key: key);

  String title;
  String subTitle;

  Function onToggle;
  Function onSelect;
  String selectedSettingName;
  bool isOpen;
  List<TouchAction> actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingTitleWidget(
            title: title,
          ),
          subTitle.isNotEmpty
              ? const SizedBox(
                  height: 8,
                )
              : Container(),
          subTitle.isNotEmpty
              ? SettingSubtitleWidget(
                  subTitle: subTitle,
                )
              : Container(),
          const SizedBox(
            height: 12,
          ),
          SettingItemWidget(
            onToggle: onToggle,
            selectedSettingName: selectedSettingName,
            isOpen: isOpen,
            onSelect: onSelect,
            actions: actions,
          ),
        ],
      ),
    );
  }
}
