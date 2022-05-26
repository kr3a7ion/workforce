import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/registration_formfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/screens/login_registrationscreen/login_screen.dart';

import '../../components/widgets_componets/clickable_text.dart';

class RegistrationScreen extends StatelessWidget {
  static const String registrationScreenId = '/RegistrationScreen';
  const RegistrationScreen({Key? key}) : super(key: key);
  final double topContainerRadius = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  AppColors.backgroundColorTop,
                  AppColors.backgroundColorTop,
                  Color.fromARGB(255, 49, 53, 80),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(topContainerRadius),
                    bottomRight: Radius.circular(topContainerRadius)),
                image: const DecorationImage(
                    image: AssetImage(kHumansCharacters),
                    alignment: Alignment.center,
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kSpace20,
                Text(
                  'Create Account',
                  style: kMediumTextStyle.copyWith(
                      color: AppColors.textColor,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const RegistrationFormField(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Flexible(
                        child: Text('Already a member? ',
                            style: kMediumTextStyle)),
                    clickableText(
                        text: 'Login Instead',
                        ontapped: () {
                          //Implement Register Button
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.loginscreenId);
                        },
                        style: kMediumTextStyle.copyWith(
                            color: AppColors.textColorOnboarding))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
