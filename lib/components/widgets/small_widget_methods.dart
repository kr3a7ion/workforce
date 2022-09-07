import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_button.dart';
import 'package:workforce/constants/constants.dart';

import '../../constants/appcolors.dart';

// widget Functions

Text smallText14(String text, {Color color = AppColors.textColorLightBlack}) {
  return Text(text,
      style: kSmallTextStyle.copyWith(
        fontSize: 14,
        letterSpacing: 0.5,
        color: color
      ));
}

Icon smallIcon25(IconData iconName, {Color color = AppColors.profileCardColor}) {
  return Icon(
    iconName,
    size: 25,
    color: color,
  );
}

class JobDescriptionWidget extends StatelessWidget {
  const JobDescriptionWidget({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        smallIcon25(icon),
        kSpaceW10,
        smallText14(text),
      ],
    );
  }
}

class RequiredSkillBubble extends StatelessWidget {
  const RequiredSkillBubble({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
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

class ProfileImageSquare extends StatelessWidget {
  const ProfileImageSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.appblue,
        borderRadius: kBorderRadius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        child: Image.asset(
          kCartoonBoy,
          height: 100,
          width: 80,
        ),
      ),
    );
  }
}
