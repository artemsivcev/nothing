import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AnimatedArrow extends StatelessWidget {
  AnimatedArrow({Key? key, required this.isOpen, this.size = 28}) : super(key: key);

  bool isOpen;
  double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: isOpen ? 0.0 : 0.5,
      duration: const Duration(milliseconds: 400),
      child: Icon(
        Icons.keyboard_arrow_up_rounded,
        size: size,
        color: context.theme.colorScheme.onSecondary,
      ),
    );
  }
}
