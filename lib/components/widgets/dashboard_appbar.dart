import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/profile_icon.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProfileIcon(
          cardColor: AppColors.profileCardColor,
          child: Image.asset(kFemaleProfileImage),
        ),
        Column(
          children: [
            Text(
              'Hello Kreation!',
              style: kMediumTextStyle.copyWith(
                  color: AppColors.textColorBlack,
                  fontFamily: kSmallAltFontFamily,
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  wordSpacing: 0,
                  letterSpacing: 0.2),
            ),
            Row(
              children: [
                const Text('🇳🇬 ', style: TextStyle(
                  fontSize: 20,
                ),),
                Text(
                  'Abuja, Nigeria', style: kSmallTextStyle.copyWith(
                    fontSize: 15
                  ),
                ),
              ],
            )
          ],
        ),
        const NotificationCard(
            cardColor: Colors.white, profileIcon: Icons.notifications)
      ],
    );
  }
}
