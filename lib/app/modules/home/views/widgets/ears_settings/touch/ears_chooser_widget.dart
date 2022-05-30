import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/constants/text_styles.dart';
import '../../../../controllers/current_device_settings_controller.dart';

class EarsChooserWidget extends StatefulWidget {
  EarsChooserWidget({Key? key}) : super(key: key);

  @override
  State<EarsChooserWidget> createState() => _EarsChooserWidgetState();
}

class _EarsChooserWidgetState extends State<EarsChooserWidget> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Get.find<CurrentDeviceSettingController>().earsTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    Get.find<CurrentDeviceSettingController>().earsTabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.theme.colorScheme.onPrimary.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: TabBar(
          controller: Get.find<CurrentDeviceSettingController>().earsTabController,
          indicator: CircledLineTabIndicator(color: context.theme.colorScheme.onPrimary),
          onTap: (_) => {Get.find<CurrentDeviceSettingController>().selectEar()},
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return states.contains(MaterialState.focused) ? null : Colors.transparent;
            },
          ),
          tabs: [
            Column(
              children: [
                 Text(
                  "left_ear".tr,
                  style: ndotPrimaryW100S20.copyWith(
                    color: context.theme.colorScheme.onPrimary,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
            Column(
              children: [
                 Text(
                  "right_ear".tr,
                  style: ndotPrimaryW100S20.copyWith(
                    color: context.theme.colorScheme.onPrimary,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircledLineTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircledLineTabIndicator({required Color color}) : _painter = _CirclePainter(color);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;

  _CirclePainter(Color color)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset offset0 = offset + Offset(cfg.size!.width / 2 + 15, cfg.size!.height);
    final Offset offset1 = offset + Offset(cfg.size!.width / 2 - 15, cfg.size!.height);
    canvas.drawLine(
      offset0,
      offset1,
      _paint,
    );
  }
}
