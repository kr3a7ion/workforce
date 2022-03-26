import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/onboarding_contents.dart';

import '../../components/widgets/onboarding_background.dart';

class OnboardingScreen extends StatelessWidget {
  static const String onboardingScreenid = '/';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Onboardingbackground(),
          OnboardingContents()
        ],
      ),
    );
  }
}
