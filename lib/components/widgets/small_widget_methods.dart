import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_button.dart';
import 'package:workforce/constants/constants.dart';

import '../../constants/appcolors.dart';

// widget Functions

Text smallText14(String text) {
  return Text(text,
      style: kSmallTextStyle.copyWith(
        fontSize: 14,
        letterSpacing: 0.5,
      ));
}

Icon smallIcon25(IconData iconName) {
  return Icon(
    iconName,
    size: 25,
    color: AppColors.textColor,
  );
}

Row jobDescriptionWidget({required IconData icon, required String text}) {
  return Row(
    children: [
      smallIcon25(icon),
      kSpaceW10,
      smallText14(text),
    ],
  );
}

Container requiredSkillBubble({required String text}) {
  return Container(
    height: 28,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.textColorGrey),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        )),
    child: Center(child: FittedBox(child: smallText14(text))),
  );
}

Row jobApplyReviewButton() {
  double buttonheight = 40;
  BorderRadiusGeometry borderRadius = const BorderRadius.all(
    Radius.circular(25),
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 120,
        child: LargeButton(
          ontapped: () {},
          label: 'View Job Post',
          height: buttonheight,
          textColor: AppColors.textColor,
          color: AppColors.backgroundColor,
          borderRadius: borderRadius,
        ),
      ),
      kSpaceW10,
      SizedBox(
        width: 100,
        child: LargeButton(
          ontapped: () {},
          label: 'Apply',
          fontSize: 20,
          height: buttonheight,
          borderRadius: borderRadius,
        ),
      )
    ],
  );
}
