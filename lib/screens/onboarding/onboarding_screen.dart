import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/onboarding_constent.dart';

import '../../components/widgets/onboarding_background.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Onboardingbackground(),
          Column(
            children: const [
              OnboardingContents(),
            ],
          )
        ],
      ),
    );
  }
}
