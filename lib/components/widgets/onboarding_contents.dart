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
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
      children: [
        SizedBox(height: 120, child: Image.asset(kCartoonBoy)),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 70,
            decoration: kWelcomeCardStyle,
            child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.displayLarge,
                )),
          ),
        )
      ],
          ),
          Column(
      children: [
        SizedBox(
          height: 280,
          width: 280,
          child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset('assets/images/breifcase.png')),
        ),
      ],
          ),
          Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(left: 40, right: 40),
          height: 180,
          decoration: BoxDecoration(
            color: AppColors.offwhiteBackground,
            borderRadius: const BorderRadius.all(Radius.circular(35)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Text(
                  'Discover your full',
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontFamily: kLargefontFamily1,
                        fontSize: 28,
                      ),
                ),
              ),
              const FittedBox(
                child: Text(
                  'Potentials Here',
                  style: TextStyle(
                      color: AppColors.textColorOnboarding,
                      fontSize: 24,
                      fontFamily: 'Fredoka'),
                ),
              ),
              const Text(
                'Here we encourage every skill and "Guess what" you get paid for doing what you love. ',
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: 3,
                style: TextStyle(
                    color: AppColors.smalltextColor,
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontFamily: 'Yanone'),
              ),
            ],
          ),
        ),
      ],
          ),
          Container(
      margin: const EdgeInsets.only(
          top: 30, left: 50, right: 50, bottom: 40),
      height: 40,
      decoration: const BoxDecoration(
          color: AppColors.gradient2,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
                onPressed: (() {
                  Navigator.pushReplacementNamed(context,
                      RegistrationScreen.registrationScreenId);
                }),
                child: Text(
                  'Register',
                  style: kButtonTextStyle.copyWith(
                    fontWeight: FontWeight.bold
                  ),
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
                child: Text(
                  'Login',
                  style: kButtonTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
          )
        ]),
    );
  }
}
