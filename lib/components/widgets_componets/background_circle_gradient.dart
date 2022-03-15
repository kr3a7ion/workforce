import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

class CircleGradient extends StatelessWidget {
  const CircleGradient({Key? key, this.color, this.height, this.width})
      : super(key: key);
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - height!,
      width: MediaQuery.of(context).size.width - width!,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.lineBorderColor,
          width: 3,
        ),
      ),
    );
  }
}
