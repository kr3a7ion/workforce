import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/main.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.textFieldType,
      this.callback,
      this.suffixChild = const Text(''),
      this.obscuring,
      this.label = 'Text here',
      this.prefixIcons,
      this.icontype})
      : super(key: key);
  final TextInputType? textFieldType;
  final Function()? callback;
  final Widget? suffixChild;
  final bool? obscuring;
  final String label;
  final IconData? icontype;
  final Widget? prefixIcons;

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
    } else if (textFieldType == TextInputType.visiblePassword) {
      return sizedFormField(
        textFieldType: textFieldType!,
        label: 'Password',
        visibleTap: callback,
        obscure: obscuring,
        suffixchild: suffixChild,
        suffixIconColor: AppColors.textColor,
      );
    } else {
      return sizedFormField(
        textFieldType: textFieldType!,
        label: label,
        visibleTap: callback,
        obscure: false,
        suffixIconColor: Colors.white,
        suffixchild: suffixChild,
        icon: icontype,
        prefixIcon: prefixIcons,
      );
    }
  }
}

sizedFormField(
    {required TextInputType textFieldType,
    required String label,
    required void Function()? visibleTap,
    IconData? icon,
    Widget? prefixIcon,
    bool? obscure,
    Color? suffixIconColor,
    Widget? suffixchild = const Text('')}) {
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: Material(
      color: Colors.transparent,
      elevation: 10,
      borderRadius: BorderRadius.circular(25),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              onFieldSubmitted: ((value) {
                notificationbarHide();
              }),
              keyboardType: textFieldType,
              obscureText: obscure!,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(230, 255, 255, 255),
                focusColor: Colors.black,
                prefixIcon: prefixIcon,
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
        ],
      ),
    ),
  );
}
