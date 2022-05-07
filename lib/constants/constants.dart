import 'package:flutter/material.dart';

import 'appcolors.dart';

//Images Constants
const String kCartoonBoy = 'assets/images/cartoonBoy.png';
const String kProfileImageMale = 'assets/images/profile.png';
const String kFemaleProfileImage = 'assets/images/femaleprofile.png';
const String kGooglelogo = 'assets/images/logos/googlelogo.png';
const String kApplelogo = 'assets/images/logos/applelogo.png';
const String kFacebooklogo = 'assets/images/logos/facebooklogo.png';
const String kHumansCharacters = 'assets/images/humanCharacters.png';
const String kForgotPassword = 'assets/images/forgotpassword.png';
const String kWorkForcelogo = 'assets/images/logos/workforcelogo.png';

//Money Image Constants
const String kWallet = 'assets/images/money/wallet.png';
const String kMoney = 'assets/images/money/moneyGold.png';
const String kDollarCoin = 'assets/images/money/dollarCoin.png';
const String kEuroCoin = 'assets/images/money/EuroGold.png';

//Fonts contants
const String kLargefontFamily1 = 'Fredoka';
const String kLargefontFamily2 = 'PermanentMarker';
const String kSmallfontFamily = 'Yanone';
const String kSmallAltFontFamily = 'Josefin';
const String kTextFontFamily = 'RadioCanada';

//Other Constants

const kWelcomeCardStyle = BoxDecoration(
    color: AppColors.shadeBackgroundColor,
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
        topRight: Radius.circular(15)));

const kDashboardCardDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    gradient: LinearGradient(colors: [
      AppColors.smallCardColor,
      AppColors.smallCardColorlight,
    ], begin: Alignment.bottomRight, end: Alignment.topLeft));

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

const kSmallTextStyle = TextStyle(
  color: AppColors.textColorLightBlack,
  fontSize: 16,
  letterSpacing: 1,
  fontFamily: kSmallAltFontFamily,
);

const kButtonTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 24,
    letterSpacing: 1.5,
    fontWeight: FontWeight.bold,
    fontFamily: kSmallfontFamily);

const kBorderRadius = BorderRadius.all(Radius.circular(10));

const kBackButton = Icon(
  Icons.arrow_back_ios_rounded,
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

const kSpace10 = SizedBox(
  height: 10,
);
