import 'package:flutter/material.dart';

import '../../constants/constants.dart';

GestureDetector clickableText(
      {required String text,
      required void Function() ontapped,
      TextStyle? style = kMediumTextStyle}) {
    return GestureDetector(
      onTap: ontapped,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }