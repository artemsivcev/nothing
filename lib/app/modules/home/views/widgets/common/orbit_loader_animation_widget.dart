import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/constants/colors.dart';

class OrbitLoaderAnimationWidget extends StatefulWidget {
  OrbitLoaderAnimationWidget({Key? key, required this.isFound}) : super(key: key);

  bool isFound;

  @override
  _OrbitLoaderAnimationWidgetState createState() => _OrbitLoaderAnimationWidgetState();
}

class _OrbitLoaderAnimationWidgetState extends State<OrbitLoaderAnimationWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    controller.repeat(min: 0.0, max: 1.0, period: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizeMultiplayer = 1.0;
    if (widget.isFound) {
      sizeMultiplayer = 0.5;
    }

    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: 200 * sizeMultiplayer,
      height: 200 * sizeMultiplayer,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.passthrough,
        children: [
          Container(
            width: 200 * sizeMultiplayer,
            height: 200 * sizeMultiplayer,
            decoration: BoxDecoration(
              color: context.theme.colorScheme.secondary,
              shape: BoxShape.circle,
            ),
          ),
          RotationTransition(
            turns: controller,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.topTextColor,
                ),
                height: 20 * sizeMultiplayer,
                width: 20 * sizeMultiplayer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
