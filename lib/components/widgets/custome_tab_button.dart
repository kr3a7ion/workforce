import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class CustomTabButton extends StatelessWidget {
  const CustomTabButton({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.textcolor = AppColors.textColor,
    this.backgroundColor = AppColors.pureWhiteBackground,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final Color textcolor;
  final double fontSize;
  final Color backgroundColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(kCurveEdgeRadius)),
          color: backgroundColor,
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: kSmallfontFamily,
              letterSpacing: 2,
            ),
          ),
        )),
      ),
    );
  }
}
