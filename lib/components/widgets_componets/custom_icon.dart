import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {Key? key,
      required this.index,
      required this.iconIndex,
      this.size = 35,
      this.setStateGesture,
      required this.iconType,
      required this.color})
      : super(key: key);

  final int index;
  final int iconIndex;
  final double size;
  final Function()? setStateGesture;
  final IconData iconType;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: setStateGesture,
      child: Icon(
        iconType,
        size: size,
        color: color,
      ),
    );
  }
}
