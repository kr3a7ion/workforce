import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../constants/appcolors.dart';

class PhoneCountryFormField extends StatelessWidget {
  const PhoneCountryFormField({
    Key? key,
    required this.phoneNumber,
    required this.initailCountry,
  }) : super(key: key);

  final String phoneNumber;
  final String initailCountry;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 10,
      shadowColor: const Color.fromARGB(187, 206, 206, 206),
      borderRadius: BorderRadius.circular(25),
      child: IntlPhoneField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(186, 255, 255, 255),
          focusColor: Colors.black,
          labelText: phoneNumber,
          labelStyle: const TextStyle(color: AppColors.textColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 231, 231, 231))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 231, 231, 231))),
        ),
        initialCountryCode: initailCountry,
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}