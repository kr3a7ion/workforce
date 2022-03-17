import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_textfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

import '../../components/widgets_componets/custom_divider.dart';
import '../../components/widgets_componets/login_options.dart';
import '../../components/widgets_componets/signin_button.dart';

class LoginScreen extends StatelessWidget {
  static const String loginscreenId = '/LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 35, right: 35, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Hello Again!',
                    style: kLargeTextStyle.copyWith(
                        fontSize: 34, fontWeight: FontWeight.normal),
                  ),
                  const Text(
                    "Welcome back we've missed! you",
                    style: kSmallTextStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  const CustomTextField(
                    texttype: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    texttype: TextInputType.visiblePassword,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: clickableText(
                          text: 'Recovery Password',
                          ontapped: () {
                            //Implement Recovery Button
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SigninButton(
                  // Set Login Button ontapped
                  ),
              const CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  LoginOptions(
                    imageasset: kGooglelogo,
                  ),
                  LoginOptions(
                    imageasset: kApplelogo,
                  ),
                  LoginOptions(
                    imageasset: kFacebooklogo,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member? ', style: kSmallTextStyle),
                  clickableText(
                      text: 'Register now',
                      ontapped: () {
                        //Implement Register Button
                      },
                      style: kSmallTextStyle.copyWith(
                          color: AppColors.smallCardColor))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector clickableText(
      {required String text,
      required void Function() ontapped,
      TextStyle? style = kSmallTextStyle}) {
    return GestureDetector(
      onTap: ontapped,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
