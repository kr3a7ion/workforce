import 'dart:ffi';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:workforce/components/widgets_componets/profile_icon.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({
    Key? key,
    required this.displayUsername,
    required this.displayProfileIcon,
    required this.showNotificatioBadge
  }) : super(key: key);

  final String? displayUsername;
  final String? displayProfileIcon;
  final bool? showNotificatioBadge;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProfileIcon(
          cardColor: AppColors.profileCardColor,
          child: Image.asset(displayProfileIcon!),
        ),
        Column(
          children: [
            Text(
              'Hello $displayUsername!',
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
                const Text(
                  '🇳🇬 ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Abuja, Nigeria',
                  style: kSmallTextStyle.copyWith(fontSize: 15),
                ),
              ],
            )
          ],
        ),
        NotificationCard(
            cardColor: AppColors.pureWhiteBackground,
            child: Badge(
              showBadge: showNotificatioBadge!,
              badgeColor: AppColors.textColorOnboarding,
              position: BadgePosition.topEnd(top: 9, end: 8),
              child: const Icon(Icons.notifications),
            ))
      ],
    );
  }
}
