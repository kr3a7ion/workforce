import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workforce/screens/onboarding/onboarding_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  notificationbarHide();

  runApp(const StartApp());
}

void notificationbarHide() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
