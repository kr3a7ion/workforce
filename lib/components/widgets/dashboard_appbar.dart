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
    required this.showNotificatioBadge,
    required this.displayCountry,
    required this.displayCity,
    required this.displayCountryFlag,
  }) : super(key: key);

  final String? displayUsername;
  final String? displayProfileIcon;
  final bool? showNotificatioBadge;
  final String? displayCountry;
  final String? displayCity;
  final String? displayCountryFlag;

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
                  fontSize: 18,
                  wordSpacing: 0,
                  letterSpacing: 0.2),
            ),
            kSpace10,
            Row(
              children: [
                Text(
                  '$displayCountryFlag',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '$displayCity, $displayCountry',
                  style: kSmallTextStyle.copyWith(fontSize: 13),
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
