// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

import '../../main.dart';
import '../widgets_componets/background_circle_gradient.dart';

class Onboardingbackground extends StatelessWidget {
  const Onboardingbackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    notificationbarHide();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(alignment: Alignment.center, children: const[
            const CircleGradient(
              height: 200,
              width: 200,
              color: AppColors.gradient1,
            ),
            const CircleGradient(
              height: 100,
              width: 100,
              color: AppColors.gradient2,
            ),
            const CircleGradient(
              height: 0,
              width: 0,
              color: AppColors.gradient3,
            ),
          ]),
    );
  }
}


