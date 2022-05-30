import 'package:flutter/material.dart';

class InkWellTransparent extends StatelessWidget {
  InkWellTransparent({Key? key, required this.onTap, required this.child}) : super(key: key);

  Function onTap;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return states.contains(MaterialState.focused) ? null : Colors.transparent;
        },
      ),
      onTap: () => onTap(),
      child: child,
    );
  }
}
