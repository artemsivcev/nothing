import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/ears_chooser_widget.dart';
import 'package:nothing/app/modules/home/views/widgets/ears_settings/touch/ears_settings_widget.dart';

class TouchSettingsWidget extends StatelessWidget {
  const TouchSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 4,
        ),
        EarsChooserWidget(),
        EarsSettingsWidget(),
      ],
    );
  }
}

