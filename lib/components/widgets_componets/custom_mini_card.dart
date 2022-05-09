import 'package:flutter/material.dart';

class MiniCardText extends StatelessWidget {
  const MiniCardText(
      {Key? key,
      this.height = 40,
      this.width = 40,
      this.child,
      this.cardDecoration})
      : super(key: key);

  final double height;
  final double width;
  final Widget? child;
  final Decoration? cardDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: cardDecoration,
      child: child,
    );
  }
}
