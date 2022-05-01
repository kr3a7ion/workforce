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
        const ProfileIcon(
          cardColor: AppColors.profileCardColor,
          profileImage: kFemaleProfileImage,
        ),
        Column(
          children: [
            Text(
              'Hello Kreation!',
              style: kMediumTextStyle.copyWith(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w700,
                  wordSpacing: 1,
                  letterSpacing: 2),
            ),
            Row(
              children: const [
                Text('🇳🇬 ', style: TextStyle(
                  fontSize: 20,
                ),),
                Text(
                  'Abuja, Nigeria', style: kSmallTextStyle,
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
