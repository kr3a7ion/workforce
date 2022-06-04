import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_cardtile.dart';
import 'package:workforce/components/widgets_componets/custom_mini_card.dart';
import 'package:workforce/components/widgets_componets/profile_icon.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

import '../../constants/color_picker.dart';

class CardTileList extends StatelessWidget {
  const CardTileList({
    Key? key,
    required this.colorPickerJobProfile,
    required this.jobProfileImage,
    required this.jobCategory,
    required this.employerCompanyName,
    required this.jobDescription,
    required this.jobDateTimeFrame,
    required this.jobPostDate,
    required this.nextJobTask,
  }) : super(key: key);
  final int colorPickerJobProfile;
  final String jobProfileImage;
  final String jobCategory;
  final String employerCompanyName;
  final String jobDescription;
  final String jobDateTimeFrame;
  final String jobPostDate;
  final String nextJobTask;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardTile(
          child: Column(children: [
            ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 13, top: 13, bottom: 7),
                leading: MiniCardText(
                  cardDecoration: BoxDecoration(
                      color: colorPick[colorPickerJobProfile],
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Center(
                      child: Image.asset(
                        jobProfileImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(jobDescription,
                          style: kMediumTextStyle.copyWith(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: AppColors.backgroundColorButtom,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 5),
                      Row(children: [
                        Text(
                          employerCompanyName,
                          style: kSmallTextStyle.copyWith(
                              fontSize: 14, letterSpacing: 0),
                        ),
                        const SizedBox(width: 10),
                        MiniCardText(
                            height: 20,
                            width: 54,
                            cardDecoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromARGB(118, 106, 193, 255),
                            ),
                            child: Center(
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      jobCategory,
                                      style: kSmallTextStyle.copyWith(
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 0, 140, 255)),
                                    ))))
                      ])
                    ])),
            const Divider(
              height: 3,
              color: AppColors.textColorGrey,
              thickness: 0.5,
              indent: 13,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 13, top: 7, bottom: 13),
              leading: ProfileIcon(
                height: 45,
                width: 45,
                cardColor: AppColors.textOffWhiteDark,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          jobDateTimeFrame,
                          style: const TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const FittedBox(
                        child: Text(
                          'days',
                          style: TextStyle(
                              fontSize: 11,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ]),
              ),
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Task',
                      style: kSmallTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          '\u2022 ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: kLargefontFamily1,
                              fontSize: 20,
                              color: Colors.greenAccent),
                        ),
                        Text(nextJobTask,
                            style: kMediumTextStyle.copyWith(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: AppColors.backgroundColorButtom,
                                fontWeight: FontWeight.w500)),
                        const Spacer(),
                        Text(jobPostDate,
                            style: kMediumTextStyle.copyWith(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: AppColors.backgroundColorButtom,
                                fontWeight: FontWeight.w500))
                      ],
                    )
                  ]),
            ),
          ]),
        ),
      ],
    );
  }
}
