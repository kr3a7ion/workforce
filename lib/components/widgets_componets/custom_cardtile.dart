import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

class CustomCardTile extends StatelessWidget {
  const CustomCardTile({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration:BoxDecoration(
            color: AppColors.offwhiteBackground,
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: AppColors.textColorGreylight
              )
            ],
          ),
            child: child,
        ),
        )],
    );
  }
}
