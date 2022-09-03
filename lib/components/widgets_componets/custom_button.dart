import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../constants/constants.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {Key? key,
      required this.ontapped,
      required this.label,
      this.height = 60,
      this.fontSize = 24,
      this.color = AppColors.textColor,
      this.textColor = AppColors.pureWhiteBackground,
      this.borderRadius = const BorderRadius.all(
        Radius.circular(15),
      )})
      : super(key: key);

  final void Function()? ontapped;
  final String? label;
  final double? height;
  final Color? color;
  final Color? textColor;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            child: GestureDetector(
              onTap: () => ontapped!(),
              child: Material(
                elevation: 20,
                shadowColor: AppColors.backgroundColor,
                color: color,
                borderRadius: borderRadius,
                child: Center(
                    child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      label!,
                      style: kMediumTextStyle.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontSize: fontSize,
                      ),
                    ),
                  ),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
