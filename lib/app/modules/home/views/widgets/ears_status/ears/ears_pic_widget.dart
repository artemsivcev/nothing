import 'package:flutter/material.dart';

import '../../../../../../data/constants/images.dart';
import 'ears_pic_child_widget.dart';

class EarsPicWidget extends StatelessWidget {
  EarsPicWidget({Key? key, required this.isBlack, required this.isConnected}) : super(key: key);

  bool isBlack;
  bool isConnected;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: const AlwaysStoppedAnimation(-45 / 360),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 1000),
            crossFadeState: !isBlack ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            firstChild: EarsPicChildWidget(
              assetName: assetLeftWhite,
              isConnected: isConnected,
            ),
            secondChild: EarsPicChildWidget(
              assetName: assetLeftBlack,
              isConnected: isConnected,
            ),
          ),
          const SizedBox(
            width: 45,
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 1000),
            crossFadeState: !isBlack ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            firstChild: EarsPicChildWidget(
              assetName: assetRightWhite,
              isConnected: isConnected,
            ),
            secondChild: EarsPicChildWidget(
              assetName: assetRightBlack,
              isConnected: isConnected,
            ),
          ),
        ],
      ),
    );
  }
}
