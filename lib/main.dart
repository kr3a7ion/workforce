import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workforce/constants/apptheme.dart';
import 'package:workforce/screens/home/dashboard.dart';
import 'package:workforce/screens/login_registrationscreen/login_screen.dart';
import 'package:workforce/screens/login_registrationscreen/password_recovery_screen.dart';
import 'package:workforce/screens/login_registrationscreen/registration_screen.dart';
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
    return MaterialApp(
      theme: AppTheme.lightTheme,
      //Routes
      initialRoute: '/',
      routes: {
        OnboardingScreen.onboardingScreenid : (context) => const OnboardingScreen(),
        LoginScreen.loginscreenId :(context) => const LoginScreen(),
        RegistrationScreen.registrationScreenId :(context) => const RegistrationScreen(),
        RecoveryScreen.recoveryScreenId :(context) => const RecoveryScreen(),
        Dashboard.dashboardId :(context) => const Dashboard(),
      },


      debugShowCheckedModeBanner: false,
    );
  }
}
