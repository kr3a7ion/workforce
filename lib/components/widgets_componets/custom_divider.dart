import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

Row customDivider (){
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/divider.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text('Or continue with', style: kMediumTextStyle.copyWith(
            color: AppColors.textColorOnboarding,
            fontSize: 20,
          ),),
        ),
        Expanded(
          child: Image.asset(
            'assets/images/dividerflip.png',
          ),
        ),
      ],
    );
  } 
