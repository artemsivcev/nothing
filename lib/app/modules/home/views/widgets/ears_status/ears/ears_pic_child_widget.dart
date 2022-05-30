import 'package:flutter/material.dart';

class EarsPicChildWidget extends StatelessWidget {
  EarsPicChildWidget({Key? key, required this.assetName, required this.isConnected}) : super(key: key);

  String assetName;
  bool isConnected;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      height: 275,
      width: 200,
      color: !isConnected ? Colors.white.withOpacity(0.2) : null,
      colorBlendMode: !isConnected ? BlendMode.srcATop : null,
    );
  }
}
