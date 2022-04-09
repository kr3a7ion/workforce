import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/registration_formfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/screens/login_registrationscreen/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  static const String registrationScreenId = '/RegistrationScreen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.backgroundColorTop,
                  AppColors.backgroundColorTop,
                  AppColors.backgroundColorButtom,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage(kHumansCharacters),
                    alignment: Alignment.center,
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, LoginScreen.loginscreenId),
                    child: kBackButton),
                kSpace20,
                Center(
                  child: Text(
                    'Create Account',
                    style: kMediumTextStyle.copyWith(
                      color: AppColors.textColor,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kSpace20,
                  Text(
                    'Fill in the information below',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 22,
                        fontFamily: kLargefontFamily1,
                        letterSpacing: 1,
                        color: AppColors.textColorOnboarding),
                  ),
                  kSpace10,
                  const Expanded(child: RegistrationFormField()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
