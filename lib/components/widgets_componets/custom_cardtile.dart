import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class CustomCardTile extends StatelessWidget {
  const CustomCardTile({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: child,
          decoration:const BoxDecoration(
            color: AppColors.pureWhiteBackground,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: AppColors.textColorGrey,
              )
            ],
          ),
        ),
        )],
    );
  }
}
