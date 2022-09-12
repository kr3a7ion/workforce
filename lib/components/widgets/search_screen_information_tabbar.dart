import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/custome_tab_button.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

enum ActiveTabs { details, skill, activities }

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  final Color activeColor = AppColors.pureWhiteBackground;

  final Color inActiveColor = AppColors.textOffWhite;

  ActiveTabs activeTab = ActiveTabs.skill;

  void toggleButton(ActiveTabs isActiveTab) {
    setState(() {
      activeTab = isActiveTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 50,
          decoration: const BoxDecoration(
              color: AppColors.textOffWhite,
              borderRadius:
                  BorderRadius.all(Radius.circular(kCurveEdgeRadius))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTabButton(
                  text: 'Details',
                  backgroundColor: activeTab == ActiveTabs.details
                      ? activeColor
                      : inActiveColor,
                  onTap: () => toggleButton(ActiveTabs.details),
                ),
                CustomTabButton(
                  text: 'Skills',
                  backgroundColor: activeTab == ActiveTabs.skill
                      ? activeColor
                      : inActiveColor,
                  onTap: () {
                    toggleButton(ActiveTabs.skill);
                  },
                ),
                CustomTabButton(
                  text: 'Activities',
                  backgroundColor: activeTab == ActiveTabs.activities
                      ? activeColor
                      : inActiveColor,
                  onTap: () => toggleButton(ActiveTabs.activities),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}
