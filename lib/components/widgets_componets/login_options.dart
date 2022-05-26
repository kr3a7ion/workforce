import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    Key? key, required this.imageasset, required this.ontap
  }) : super(key: key);

  final String? imageasset;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Image.asset(
          imageasset!, fit: BoxFit.contain,
        ),
      ),
    );
  }
}
