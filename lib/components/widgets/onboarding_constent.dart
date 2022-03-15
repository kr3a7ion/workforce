import 'package:flutter/material.dart';
import 'package:workforce/constants/constants.dart';

class OnboardingContents extends StatelessWidget {
  const OnboardingContents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          SizedBox(
              height: 120,
              child: Image.asset(kCartoonBoy)),
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
    ]);
  }
}