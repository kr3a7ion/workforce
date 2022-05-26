import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/phone_countryformfield.dart';
import 'package:workforce/constants/constants.dart';

import '../widgets_componets/custom_textfield.dart';
import '../widgets_componets/signin_button.dart';

class RegistrationFormField extends StatelessWidget {
  const RegistrationFormField({Key? key}) : super(key: key);
  final String userName = 'UserName';
  final String firtName = 'First Name';
  final String lastName = 'Last Name';
  final String emailLabel = 'Email';
  final String phoneNumber = 'Phone';
  final String initailCountry = 'NG';

  Widget buildForm({
    required String label,
    bool obsure = false,
    Function()? visiblility,
    TextInputType? textFieldType,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedFormField(
          textFieldType: textFieldType!,
          label: label,
          visibleTap: visiblility,
          obscure: obsure,
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildForm(label: userName, textFieldType: TextInputType.name),
        buildForm(label: firtName, textFieldType: TextInputType.name),
        buildForm(label: lastName, textFieldType: TextInputType.name),
        buildForm(label: emailLabel, textFieldType: TextInputType.emailAddress),
        PhoneCountryFormField(
          phoneNumber: phoneNumber,
          initailCountry: initailCountry,
        ),
        kSpace20,
        const LargeButton(
          label: 'Sign Up',
        )
      ],
    ));
  }
}
