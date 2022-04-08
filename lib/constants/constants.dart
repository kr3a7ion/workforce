import 'package:flutter/material.dart';

import 'appcolors.dart';

//Images Constants
const String kCartoonBoy = 'assets/images/cartoon1.png';
const String kGooglelogo = 'assets/images/logos/googlelogo.png';
const String kApplelogo = 'assets/images/logos/applelogo.png';
const String kFacebooklogo = 'assets/images/logos/facebooklogo.png';
const String kHumansCharacters = 'assets/images/humanCharacters.png';

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

const kMediumTextStyle = TextStyle(
    color: AppColors.smalltextColor,
    fontSize: 24,
    letterSpacing: 1,
    fontFamily: kSmallfontFamily);

const kButtonTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 24,
    letterSpacing: 1.5,
    fontWeight: FontWeight.bold,
    fontFamily: kSmallfontFamily);

const kBorderRadius = BorderRadius.all(Radius.circular(10));

const kBackButton = Icon(
  Icons.arrow_back_ios_new_rounded,
  size: 40,
  color: AppColors.textColor,
);

const kForwardButton = Icon(
  Icons.arrow_forward_ios_rounded,
  size: 35,
  color: AppColors.textColor,
);

const kSpace20 = SizedBox(
  height: 20,
);
