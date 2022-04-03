import 'package:flutter/material.dart';

import '../../constants/appcolors.dart';
import '../../constants/constants.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({Key? key, this.ontapped, this.label}) : super(key: key);

  final void Function()? ontapped;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: GestureDetector(
              onTap: () => ontapped,
              child: Material(
                elevation: 10,
                shadowColor: AppColors.backgroundColor,
                color: AppColors.textColor,
                child: Center(
                    child: Text(
                  label!,
                  style: kMediumTextStyle.copyWith(color: Colors.white),
                )),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
