import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hear/equalizer_widget.dart';
import 'hear/hear_title_widget.dart';
import 'hear/noise_cancel_widget.dart';

class HearSettingsWidget extends StatelessWidget {
  const HearSettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 4,
        ),
        HearTitleWidget(),
        NoiseCancelWidget(),
        EqualizerWidget(),
      ],
    );
  }
}
