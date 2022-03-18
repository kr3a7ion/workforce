import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class OnboardingContents extends StatelessWidget {
  const OnboardingContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Row(
        children: [
          SizedBox(height: 120, child: Image.asset(kCartoonBoy)),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(30),
              height: 70,
              decoration: kWelcomeCardStyle,
              child: const Center(
                child: Text('Welcome', style: kLargeTextStyle),
              ),
            ),
          )
        ],
      ),
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 300,
              child: Image.asset('assets/images/breifcase.png'),
            ),
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        margin: const EdgeInsets.only(left: 40, right: 40),
        height: 180,
        decoration: const BoxDecoration(
          color: AppColors.whiteBackground,
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Column(
          children: const [
            Text(
              'Discover your full',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 30,
                  fontFamily: 'Fredoka'),
            ),
            Text(
              'Potentials Here',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.textColorOnboarding,
                  fontSize: 30,
                  fontFamily: 'Fredoka'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Here we encourage every skill and "quess what" you get paid for doing what you love. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.smalltextColor,
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontFamily: 'Yanone'),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
