import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../constants/constants.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    Key? key, required this.imageasset
  }) : super(key: key);

  final String? imageasset;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: kBorderRadius,
          color: AppColors.gradient3,
          border: Border.all(width: 2, color: AppColors.gradient2),
        ),
        child: Center(
          child: Image.asset(
            imageasset!,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}
