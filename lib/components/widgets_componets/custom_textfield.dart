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

Material sizedFormField(
    {required TextInputType textFieldType,
    required String label,
    required void Function()? visibleTap,
    bool? obscure,
    Color? suffixIconColor,
    Widget? suffixchild = const Text('')}) {
  return Material(
    color: Colors.transparent,
    elevation: 10,
    borderRadius: BorderRadius.circular(25),
    child: SizedBox(
      height: 60,
      width: double.infinity,
      child: TextFormField(
        keyboardType: textFieldType,
        obscureText: obscure!,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(230, 255, 255, 255),
          focusColor: Colors.black,
          label: Text(label),
          labelStyle: const TextStyle(color: AppColors.textColor),
          suffixIcon: GestureDetector(
            onTap: visibleTap,
            child: suffixchild,
          ),
          suffixIconColor: suffixIconColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 231, 231, 231))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 231, 231, 231))),
        ),
      ),
    ),
  );
}
