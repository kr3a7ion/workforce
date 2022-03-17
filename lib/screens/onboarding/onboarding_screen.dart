import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/onboarding_constent.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/screens/login_registrationscreen/login_screen.dart';
import 'package:workforce/screens/login_registrationscreen/registration_screen.dart';

import '../../components/widgets/onboarding_background.dart';

class OnboardingScreen extends StatelessWidget {
  static const String onboardingScreenid = '/';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Onboardingbackground(),
          Column(
            children: [
              const OnboardingContents(),
              Container(
                margin: const EdgeInsets.only(
                    top: 40, left: 50, right: 50, bottom: 15),
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
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.gradient1)),
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
            ],
          )
        ],
      ),
    );
  }
}
