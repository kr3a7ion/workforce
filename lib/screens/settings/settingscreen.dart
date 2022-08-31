import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static const String settingScreenId = '/SettingScreen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Settings'),
    );
  }
}
