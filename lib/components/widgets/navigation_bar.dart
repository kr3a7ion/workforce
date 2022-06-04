import 'package:flutter/material.dart';
import 'package:workforce/constants/appcolors.dart';

import 'package:iconly/iconly.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  final Color activeIconColor = const Color.fromARGB(255, 35, 123, 206);
  final Color inactiveIconColor = AppColors.textColorGrey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color.fromARGB(255, 24, 24, 24),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    navigationIcon(
                        iconType: IconlyBroken.home,
                        color: AppColors.pureWhiteBackground),
                    navigationIcon(
                        iconType: IconlyBroken.search,
                        color: AppColors.pureWhiteBackground),
                    navigationIcon(
                        iconType: IconlyBroken.activity,
                        color: AppColors.pureWhiteBackground),
                    navigationIcon(
                        iconType: IconlyBroken.setting,
                        color: AppColors.pureWhiteBackground),
                  ]),
            ),
          ),
        )
      ],
    );
  }

  Icon navigationIcon({required IconData iconType, required Color color}) {
    return Icon(
      iconType,
      color: color,
      size: 35,
    );
  }
}
