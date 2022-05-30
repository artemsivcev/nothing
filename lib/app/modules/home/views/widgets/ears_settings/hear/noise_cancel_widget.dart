import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nothing/app/modules/home/controllers/current_device_settings_controller.dart';

import '../../../../../../data/constants/colors.dart';
import '../../../../../../data/constants/images.dart';
import 'noise_cancel_light_to_max_widget.dart';
import 'noise_cancel_subtitle_widget.dart';

class NoiseCancelWidget extends StatefulWidget {
  const NoiseCancelWidget({Key? key}) : super(key: key);

  @override
  State<NoiseCancelWidget> createState() => _NoiseCancelWidgetState();
}

class _NoiseCancelWidgetState extends State<NoiseCancelWidget> with SingleTickerProviderStateMixin {
  late TabController noiseController;

  @override
  void initState() {
    noiseController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    noiseController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 24),
      child: GetX<CurrentDeviceSettingController>(builder: (controller) {
        if (noiseController.index != controller.selectedDevice.value?.noiseCancellation.index) {
          noiseController.animateTo(controller.selectedDevice.value?.noiseCancellation.index ?? 0);
          controller.selectNoiseCancelById(noiseController.index);
        }
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: context.theme.colorScheme.surface,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  controller: noiseController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    color: controller.isOffSelected.value ? AppTheme.empty : context.theme.colorScheme.secondary,
                  ),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      return states.contains(MaterialState.focused) ? null : Colors.transparent;
                    },
                  ),
                  onTap: (index) => {controller.selectNoiseCancelById(index)},
                  tabs: [
                    Image.asset(
                      assetNoiseOff,
                      height: 42,
                    ),
                    Image.asset(
                      assetNoiseTrans,
                      height: 42,
                    ),
                    Image.asset(
                      assetNoiseOff,
                      height: 42,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            const NoiseCancelSubtitleWidget(),
            controller.isCancelSelected.value ? const SizedBox(height: 8) : Container(),
            controller.isCancelSelected.value ? NoiseCancelLightToMax() : Container(),
          ],
        );
      }),
    );
  }
}
