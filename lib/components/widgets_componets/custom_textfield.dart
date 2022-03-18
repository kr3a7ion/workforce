import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.texttype,
    this.callback,
    this.child,
    this.obscuring,
  }) : super(key: key);
  final TextInputType? texttype;
  final Function()? callback;
  final Widget? child;
  final bool? obscuring;

  @override
  Widget build(BuildContext context) {
    if (texttype == TextInputType.emailAddress) {
      return SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width - 20,
        child: myTextField(
          texttype: texttype!,
          label: 'Email',
          obscure: false,
          ontapped: callback,
          suffixColor: Colors.white,
          child: child,
        ),
      );
    } else {
      return SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width - 20,
        child: myTextField(
          texttype: texttype!,
          label: 'Password',
          ontapped: callback,
          obscure: obscuring,
          child: child,
          suffixColor: AppColors.textColor,
        ),
      );
    }
  }
}

TextField myTextField(
    {required TextInputType texttype,
    required String label,
    required void Function()? ontapped,
    bool? obscure,
    Color? suffixColor,
    Widget? child}) {
  return TextField(
    keyboardType: texttype,
    obscureText: obscure!,
    decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusColor: AppColors.backgroundColorlight,
        label: Text(label),
        labelStyle: const TextStyle(color: AppColors.textColor),
        suffixIcon: GestureDetector(
          onTap: ontapped,
          child: child,
        ),
        suffixIconColor: suffixColor,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)))),
  );
}
