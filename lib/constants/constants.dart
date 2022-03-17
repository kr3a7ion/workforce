import 'package:flutter/material.dart';

import 'appcolors.dart';

//Images Constants
const String kCartoonBoy = 'assets/images/cartoon1.png';
const String kGooglelogo = 'assets/images/logos/googlelogo.png';
const String kApplelogo = 'assets/images/logos/applelogo.png';
const String kFacebooklogo = 'assets/images/logos/facebooklogo.png';

//Fonts contants
const String kLargefontFamily1 = 'Fredoka';
const String kLargefontFamily2 = 'PermanentMarker';
const String kSmallfontFamily = 'Yanone';

//Other Constants

const kWelcomeCardStyle = BoxDecoration(
    color: AppColors.shadeBackgroundColor,
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
        topRight: Radius.circular(15)));

const kLargeTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    fontFamily: kLargefontFamily2);

const kSmallTextStyle = TextStyle(
    color: AppColors.smalltextColor,
    fontSize: 24,
    letterSpacing: 1,
    fontFamily: kSmallfontFamily);

const kButtonTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 22,
    letterSpacing: 1.5,
    fontWeight: FontWeight.bold,
    fontFamily: kSmallfontFamily);

const kBorderRadius = BorderRadius.all(Radius.circular(10));
