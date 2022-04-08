import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.textFieldType,
    this.callback,
    this.suffixChild = const Text(''),
    this.obscuring,
  }) : super(key: key);
  final TextInputType? textFieldType;
  final Function()? callback;
  final Widget? suffixChild;
  final bool? obscuring;

  @override
  Widget build(BuildContext context) {
    if (textFieldType == TextInputType.emailAddress) {
      return sizedFormField(
        textFieldType: textFieldType!,
        label: 'Email',
        obscure: false,
        visibleTap: callback,
        suffixIconColor: Colors.white,
        suffixchild: suffixChild,
      );
    } else {
      return sizedFormField(
        textFieldType: textFieldType!,
        label: 'Password',
        visibleTap: callback,
        obscure: obscuring,
        suffixchild: suffixChild,
        suffixIconColor: AppColors.textColor,
      );
    }
  }
}

SizedBox sizedFormField(
    {required TextInputType textFieldType,
    required String label,
    required void Function()? visibleTap,
    bool? obscure,
    Color? suffixIconColor,
    Widget? suffixchild = const Text('')}) {
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: TextFormField(
      keyboardType: textFieldType,
      obscureText: obscure!,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusColor: AppColors.backgroundColorlight,
        label: Text(label),
        labelStyle: const TextStyle(color: AppColors.textColor),
        suffixIcon: GestureDetector(
          onTap: visibleTap,
          child: suffixchild,
        ),
        suffixIconColor: suffixIconColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 2, color: AppColors.textColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 3, color: AppColors.lineBorderColor)),
      ),
    ),
  );
}
