import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:workforce/components/widgets/small_widget_methods.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/constants/dashboard_const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const profileScreenId = '/ProfileScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            clipBehavior: Clip.none,
            keyboardDismissBehavior: kKeyboardScrollDismiss,
            padding: kScreenPadding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kBackButton,
                    Text(
                      'PROFILE',
                      style: kMediumTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 6),
                    ),
                    GestureDetector(child: kSettingsButton),
                  ],
                ),
                kSpace20,
                const ProfileImageSquare(),
                kSpace20,
                Text(
                  kProfileFullName,
                  style: kSmallTextStyle.copyWith(
                    fontSize: 18,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontFamily: kSmallfontFamily,
                  ),
                ),
                kSpace10,
                smallText14('UI/UX Designer'),
              ],
            ),
          )),
    );
  }
}
