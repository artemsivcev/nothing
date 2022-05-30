import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting/setting_selected_item_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting/setting_selector_list_widget.dart';

import '../../../../../../data/models/touch_action.dart';
import '../../../../controllers/current_device_settings_controller.dart';
import '../../common/ink_well.dart';

class SettingItemWidget extends GetView<CurrentDeviceSettingController> {
  SettingItemWidget({
    Key? key,
    required this.onToggle,
    required this.onSelect,
    required this.selectedSettingName,
    required this.isOpen,
    required this.actions,
  }) : super(key: key);

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
          InkWellTransparent(
            onTap: () => onToggle(),
            child: SettingSelectedItemWidget(
              name: selectedSettingName,
              isOpen: isOpen,
              showArrow: actions.length > 1,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SettingSelectorListWidget(
            isOpen: isOpen,
            onSelect: onSelect,
            actions: actions,
          ),
        ],
      ),
    );
  }
}
