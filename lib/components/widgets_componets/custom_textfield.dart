import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.texttype}) : super(key: key);
  final TextInputType? texttype;

  @override
  Widget build(BuildContext context) {
    if (texttype == TextInputType.emailAddress) {
      return TextField(
        keyboardType: texttype,
        decoration: const InputDecoration(
          fillColor: Colors.white,
          filled: true,
            focusColor: AppColors.backgroundColorlight,
            label: Text('Email'),
            suffixIconColor: AppColors.textColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
      );
    } else {
      return TextField(
        keyboardType: texttype,
        obscureText: true,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
            focusColor: AppColors.backgroundColorlight,
            label: Text('Password'),
            suffixIcon: Icon(Icons.visibility_off),
            suffixIconColor: AppColors.textColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
      );
    }
  }
}
