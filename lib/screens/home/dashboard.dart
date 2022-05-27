import 'dart:math';

import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/dashboard_appbar.dart';
import 'package:workforce/components/widgets/dashboard_cardrow.dart';
import 'package:workforce/components/widgets/navigation_bar.dart';
import 'package:workforce/components/widgets/project_cardlist.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

import '../../constants/color_picker.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  static const String dashboardId = '/DashboardScreen';

  final Random _random1 = Random();
  final Random _random2 = Random();

  // Below finals are to be generate automaticaly
  // It still needs refactoring
  final String displayUsername = 'Gideon';
  final String displayProfileIcon = kFemaleProfileImage;
  final bool showNotificationBadge = true;
  final String displayCountry = 'Nigeria';
  final String displayCity = 'Lagos';
  final String displayCountryFlag = '🇳🇬';
  final String displayCurrency = '\$';
  final String displayWalletBalance = '12,808';
  final String workHours = '1000';

  final String jobProfileImageMale = kProfileImageMale;
  final String jobProfileImageFemale = kFemaleProfileImage;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
        child: Column(
          children: [
            DashboardAppBar(
              displayUsername: widget.displayUsername,
              displayProfileIcon: widget.displayProfileIcon,
              showNotificatioBadge: widget.showNotificationBadge,
              displayCountry: widget.displayCountry,
              displayCity: widget.displayCity,
              displayCountryFlag: widget.displayCountryFlag,
            ),
            const SizedBox(height: 30),
            CardRow(
              currency: widget.displayCurrency,
              walletBalance: widget.displayWalletBalance,
              workHours: widget.workHours,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Projects',
                    style: kSmallTextStyle.copyWith(
                      color: AppColors.backgroundColorButtom,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  // Needs Ontap Gesture
                  'See all',
                  style: kSmallTextStyle.copyWith(
                      color: AppColors.smallCardColor, fontSize: 14),
                )
              ],
            ),
            kSpace20,
            CardTileList(
                jobProfileImage: widget.jobProfileImageMale,
                colorPickerJobProfile: widget._random1.nextInt(colorPick.length + 1)),
            kSpace10,
            CardTileList(
                jobProfileImage: widget.jobProfileImageFemale,
                colorPickerJobProfile: widget._random2.nextInt(colorPick.length + 1)),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
