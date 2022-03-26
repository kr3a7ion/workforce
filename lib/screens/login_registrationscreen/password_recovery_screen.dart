import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_textfield.dart';
import 'package:workforce/components/widgets_componets/signin_button.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({Key? key}) : super(key: key);

  static const recoveryScreenId = '/RecoveryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 40,
                    color: AppColors.textColor,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: SizedBox(
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password Recovery',
                      style: kLargeTextStyle.copyWith(
                          fontSize: 30, fontWeight: FontWeight.normal),
                    ),
                    CustomTextField(
                      texttype: TextInputType.emailAddress,
                      child: const Text(''),
                      callback: () {
                        //implement recovery password callback
                      },
                    ),
                    const SigninButton(
                      label: 'Recover Password',
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
