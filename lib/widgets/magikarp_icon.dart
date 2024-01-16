import 'package:flutter/material.dart';

class MagikarpIcon extends StatelessWidget {
  final double size;
  const MagikarpIcon({
    Key? key,
    this.size = 140,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'magikarp-icon',
      child: Image.asset(
        "assets/images/logo150x150.png",
        width: size,
        height: size,
        isAntiAlias: true,
        fit: BoxFit.contain,
      ),
    );
  }
}
