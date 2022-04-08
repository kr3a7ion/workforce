import 'package:flutter/material.dart';

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

class AppColors {
  static final whiteBackground = buildMaterialColor(const Color(0xffebeff3));

  static const shadeBackgroundColor = Color(0xffacd2fe);

  static const textColor = Color.fromARGB(255, 6, 14, 73);

  static const backgroundColor = Color(0xff7ec3fc);
  static const backgroundColorlight = Color.fromARGB(103, 209, 238, 248);

  static const smallCardColor = Color(0xff0f71ed);

  static const smalltextColor = Color(0xff505658);

  static const signTextColor = Color(0xffa6a9b1);

  static const textColorOnboarding = Color(0xffc67b22);

  static const lineBorderColor = Color.fromARGB(50, 168, 227, 255);

  // Circle Grediant Colors
  static const gradient1 = Color.fromARGB(103, 209, 238, 248);
  static const gradient2 = Color.fromARGB(92, 163, 229, 253);
  static const gradient3 = Color.fromARGB(50, 163, 229, 253);

  //Background Gradient Colors
  static const backgroundColorButtom = Color.fromARGB(255, 6, 14, 73);
  static const backgroundColorMiddle1 = Color(0XFF2EAAFA);
  static const backgroundColorMiddle2 = Color(0XFFADF7F2);
  static const backgroundColorTop = Color(0xffebeff3);
}
