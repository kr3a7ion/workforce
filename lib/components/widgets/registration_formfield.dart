import 'package:flutter/material.dart';

import '../widgets_componets/custom_textfield.dart';

class RegistrationFormField extends StatelessWidget {
  const RegistrationFormField({Key? key}) : super(key: key);
  final String firtName = 'First Name';
  final String lastName = 'Last Name';
  final String emailLabel = 'Email';
  final String phoneNumber = 'Phone';

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
        child: ListView(
      children: [
        buildForm(label: firtName, textFieldType: TextInputType.name),
        buildForm(label: lastName, textFieldType: TextInputType.name),
        buildForm(label: emailLabel, textFieldType: TextInputType.emailAddress),
        buildForm(label: phoneNumber, textFieldType: TextInputType.number),
      ],
    ));
  }
}