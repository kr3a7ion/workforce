// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/screens/home/dashboard.dart';
import 'package:workforce/screens/profile/profilescreen.dart';
import 'package:workforce/screens/search/search_screen.dart';
import 'package:workforce/screens/settings/settingscreen.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  final Color activeIconColor = const Color.fromARGB(255, 35, 123, 206);
  final Color inactiveIconColor = AppColors.pureWhiteBackground;

  final List<IconData> navigationIcons = [
    IconlyBroken.home,
    IconlyBroken.search,
    IconlyBroken.profile,
    IconlyBroken.setting,
  ];

  final List<String> namedRoutes = [
    Dashboard.dashboardId,
    SearchScreen.searchScreenId,
    ProfileScreen.profileScreenId,
    SettingScreen.settingScreenId,
  ];

  Widget _buildItem() {
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
                      customIcon(
                        index: navigationIcons.indexOf(IconlyBroken.home),
                        iconIndex: namedRoutes.indexOf(Dashboard.dashboardId),
                      ),
                      customIcon(
                        index: navigationIcons.indexOf(IconlyBroken.search),
                        iconIndex:
                            namedRoutes.indexOf(SearchScreen.searchScreenId),
                      ),
                      customIcon(
                        index: navigationIcons.indexOf(IconlyBroken.profile),
                        iconIndex:
                            namedRoutes.indexOf(ProfileScreen.profileScreenId),
                      ),
                      customIcon(
                        index: navigationIcons.indexOf(IconlyBroken.setting),
                        iconIndex:
                            namedRoutes.indexOf(SettingScreen.settingScreenId),
                      ),
                    ],
                  ))),
        ),
      ],
    );
  }

  GestureDetector customIcon({
    required int index,
    required int iconIndex,
    double size = 35,
  }) {
    return GestureDetector(
      onTap: (() {
        onItemSelected(index);
      }),
      child: Icon(
        navigationIcons[iconIndex],
        size: size,
        color: selectedIndex == index ? activeIconColor : inactiveIconColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildItem();
  }
}
