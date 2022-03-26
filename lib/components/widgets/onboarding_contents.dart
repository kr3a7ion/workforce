import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

import '../../screens/login_registrationscreen/login_screen.dart';
import '../../screens/login_registrationscreen/registration_screen.dart';

class OnboardingContents extends StatelessWidget {
  const OnboardingContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Row(
        children: [
          SizedBox(height: 120, child: Image.asset(kCartoonBoy)),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.only(left: 10, right: 10),
              height: 70,
              decoration: kWelcomeCardStyle,
              child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text('Welcome', style: kLargeTextStyle)),
            ),
          )
        ],
      ),
      SizedBox(
        height: 280,
        width: 280,
        child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset('assets/images/breifcase.png')),
      ),
      Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        margin: const EdgeInsets.only(left: 40, right: 40),
        height: 170,
        decoration: const BoxDecoration(
          color: AppColors.whiteBackground,
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        child: Column(
          children: const [
            FittedBox(
              child: Text(
                'Discover your full',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.visible,
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 30,
                    fontFamily: 'Fredoka'),
              ),
            ),
            FittedBox(
              child: Text(
                'Potentials Here',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.textColorOnboarding,
                    fontSize: 30,
                    fontFamily: 'Fredoka'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Here we encourage every skill and "quess what" you get paid for doing what you love. ',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    color: AppColors.smalltextColor,
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontFamily: 'Yanone'),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 15),
        height: 50,
        decoration: const BoxDecoration(
            color: AppColors.gradient2,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: (() {
                    Navigator.pushReplacementNamed(
                        context, RegistrationScreen.registrationScreenId);
                  }),
                  child: const Text(
                    'Register',
                    style: kButtonTextStyle,
                  )),
            ),
            Expanded(
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.gradient1)),
                  onPressed: (() {
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.loginscreenId);
                  }),
                  child: const Text(
                    'Login',
                    style: kButtonTextStyle,
                  )),
            ),
          ],
        ),
      )
    ]);
  }
}
