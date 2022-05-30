import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/setting/setting_selector_item_widget.dart';

import '../../../../../../../data/models/touch_action.dart';
import '../../../common/ink_well.dart';

class SettingSelectorListWidget extends StatefulWidget {
  SettingSelectorListWidget({
    Key? key,
    required this.isOpen,
    required this.onSelect,
    required this.actions,
  }) : super(key: key);

  bool isOpen;
  Function onSelect;
  List<TouchAction> actions;

  @override
  State<SettingSelectorListWidget> createState() => _SettingSelectorListWidgetState();
}

class _SettingSelectorListWidgetState extends State<SettingSelectorListWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      height: widget.isOpen ? 195 : 0,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: context.theme.colorScheme.surface,
          ),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: widget.actions.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWellTransparent(
                    onTap: () => widget.onSelect(index),
                    child: SettingSelectorElementWidget(
                      name: widget.actions[index].name,
                      isSelected: widget.actions[index].isActive,
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
