import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_cardtile.dart';
import 'package:workforce/components/widgets_componets/custom_mini_card.dart';
import 'package:workforce/components/widgets_componets/profile_icon.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

import '../../constants/color_picker.dart';

class CardTileList extends StatelessWidget {
  const CardTileList({Key? key, required this.colorPicker}) : super(key: key);
  final int colorPicker;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCardTile(
          child: Column(children: [
            ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 13, top: 13, bottom: 13),
                leading: MiniCardText(
                  cardDecoration: BoxDecoration(
                      color: colorPick[colorPicker],
                      borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      kFemaleProfileImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tech Company Logo Design',
                          style: kMediumTextStyle.copyWith(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: AppColors.backgroundColorButtom,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 5),
                      Row(children: [
                        Text(
                          'Kreattech Ltd',
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
                                      'Design',
                                      style: kSmallTextStyle.copyWith(
                                          fontSize: 10,
                                          color: const Color.fromARGB(
                                              255, 0, 140, 255)),
                                    ))))
                      ])
                    ])),
            const Divider(
              height: 3,
              color: AppColors.textColorGrey,
              thickness: 0.5,
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.only(bottom: 10, left: 13, top: 5),
              leading: ProfileIcon(
                height: 45,
                width: 45,
                cardColor: AppColors.textOffWhiteDark,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        '18',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'days',
                        style: TextStyle(
                            fontSize: 13,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w400),
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
                          '\u2022',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: kLargefontFamily1,
                              fontSize: 20,
                              color: Colors.greenAccent),
                        ),
                        Text(' Prepering live prototype',
                            style: kMediumTextStyle.copyWith(
                                fontSize: 16,
                                letterSpacing: 1,
                                color: AppColors.backgroundColorButtom,
                                fontWeight: FontWeight.w500)),
                        const Spacer(),
                        Text('9 May',
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
