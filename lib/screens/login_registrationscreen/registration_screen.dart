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
      //backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(kHumansCharacters),
          alignment: Alignment.center,
          fit: BoxFit.fitWidth
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, LoginScreen.loginscreenId),
                      child: kBackButton),
                ],
              ),
              kSpace20,
              Text(
                'Fill in the information below',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 28,
                    fontFamily: kLargefontFamily1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: AppColors.textColor),
              ),
              kSpace20,
              const Expanded(child: RegistrationFormField()),
            ],
          ),
        ),
      ),
    );
  }
}
