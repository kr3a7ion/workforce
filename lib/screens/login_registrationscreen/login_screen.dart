import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_textfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/screens/home/navigator.dart';
import 'package:workforce/screens/login_registrationscreen/password_recovery_screen.dart';
import 'package:workforce/screens/login_registrationscreen/registration_screen.dart';

import '../../components/widgets_componets/clickable_text.dart';
import '../../components/widgets_componets/custom_divider.dart';
import '../../components/widgets_componets/login_options.dart';
import '../../components/widgets_componets/signin_button.dart';

class LoginScreen extends StatefulWidget {
  static const String loginscreenId = '/LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var signInlogo = <String>[
    kGooglelogo,
    kBehanceLogo,
    kFacebooklogo,
  ];

  List signUrl = <String>[
    'facebook.com',
    'google.com',
    'behanceUrl',
  ];

  List logoGen() {
    var genRowimage = <Widget>[];
    for (var item in signInlogo) {
      genRowimage.add(LoginOptions(
        imageasset: item,
        ontap: () {
          print(signUrl[signInlogo.indexOf(item)]);
          // Implement ontap function for each login Options
        },
      ));
    }
    return genRowimage;
  }

  bool visibility = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    style: kMediumTextStyle,
                  ),
                ],
              ),
              Column(
                children: [
                  const CustomTextField(
                    textFieldType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    textFieldType: TextInputType.visiblePassword,
                    obscuring: visibility ? true : false,
                    callback: () {
                      setState(() {
                        visibility = visibility ? false : true;
                      });
                    },
                    suffixChild: visibility
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: clickableText(
                          text: 'Recovery Password',
                          style: kMediumTextStyle.copyWith(
                              color: AppColors.textColorOnboarding),
                          ontapped: () {
                            //Implement Recovery Button
                            Navigator.pushNamed(
                                context, RecoveryScreen.recoveryScreenId);
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
              LargeButton(
                label: 'Sign in',
                // Set Login Button ontapped
                ontapped: () {
                  Navigator.pushReplacementNamed(
                      context, NavigateScreens.navigateScreensId);
                },
              ),
              customDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...logoGen(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                      child: Text('Not a member? ', style: kMediumTextStyle)),
                  clickableText(
                      text: 'Register now',
                      ontapped: () {
                        //Implement Register Button
                        Navigator.pushReplacementNamed(
                            context, RegistrationScreen.registrationScreenId);
                      },
                      style: kMediumTextStyle.copyWith(
                          color: AppColors.textColorOnboarding))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
