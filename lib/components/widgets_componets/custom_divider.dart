import 'package:flutter/material.dart';
import 'package:workforce/constants/constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/divider.png',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text('Or continue with', style: kSmallTextStyle.copyWith(
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
}
