import 'dart:math';

import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/dashboard_appbar.dart';
import 'package:workforce/components/widgets/dashboard_cardrow.dart';
import 'package:workforce/components/widgets/project_cardlist.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/constants/dashboard_const.dart';

import '../../constants/color_picker.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static const String dashboardId = '/DashboardScreen';

  // Others
  final String jobProfileImageMale = kProfileImageMale;
  final String jobProfileImageFemale = kFemaleProfileImage;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final Random _random1 = Random();
  final Random _random2 = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.offwhiteBackground,
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          child: Column(
            children: [
              DashboardAppBar(
                  displayUsername: displayUsername,
                  displayProfileIcon: displayProfileIcon,
                  showNotificatioBadge: showNotificationBadge,
                  displayCountry: displayCountry,
                  displayCity: displayCity,
                  displayCountryFlag: displayCountryFlag,
                  ontapped: () {
                    setState(() {
                      showNotificationBadge
                          ? showNotificationBadge = false
                          : showNotificationBadge = true;
                    });
                  }),
              const SizedBox(height: 30),
              CardRow(
                currency: displayCurrency,
                walletBalance: displayWalletBalance,
                workHours: workHours,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Projects',
                      style: kSmallTextStyle.copyWith(
                        color: AppColors.profileCardColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  GestureDetector(
                    onTap: () {
                      // Implement OnTap for See all Projects
                    },
                    child: Text(
                      'See all',
                      style: kSmallTextStyle.copyWith(
                          color: AppColors.profileCardColor, fontSize: 14),
                    ),
                  )
                ],
              ),
              kSpace20,
              CardTileList(
                  jobProfileImage: widget.jobProfileImageMale,
                  jobCategory: jobCategory,
                  jobDescription: jobDescription,
                  employerCompanyName: employerCompanyName,
                  jobDateTimeFrame: jobDateTimeFrame,
                  jobPostDate: jobPostDate,
                  nextJobTask: nextJobTask,
                  colorPickerJobProfile: _random1.nextInt(colorPick.length)),
              kSpace10,
              CardTileList(
                  jobProfileImage: widget.jobProfileImageFemale,
                  jobDescription: jobDescription,
                  jobCategory: jobCategory,
                  employerCompanyName: employerCompanyName,
                  jobDateTimeFrame: jobDateTimeFrame,
                  jobPostDate: jobPostDate,
                  nextJobTask: nextJobTask,
                  colorPickerJobProfile: _random2.nextInt(colorPick.length)),
            ],
          ),
        ));
  }
}
