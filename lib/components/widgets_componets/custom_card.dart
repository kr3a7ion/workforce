import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.decorations, this.child, this.flexV, this.height=240})
      : super(key: key);

  final Decoration? decorations;
  final Widget? child;
  final int? flexV;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexV!,
      child: Container(
        height: height,
        child: child,
        decoration: decorations,
      ),
    );
  }
}
