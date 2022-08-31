import 'package:flutter/material.dart';

import '../../components/widgets/navigation_bar.dart';
import '../profile/profilescreen.dart';
import '../search/search_screen.dart';
import '../settings/settingscreen.dart';
import 'dashboard.dart';

class NavigateScreens extends StatefulWidget {
  const NavigateScreens({
    Key? key,
  }) : super(key: key);

  static const String navigateScreensId = '/NavigateScreens';

  @override
  State<NavigateScreens> createState() => _NavigateScreensState();
}

class _NavigateScreensState extends State<NavigateScreens> {
  int _selectedindex = 0;

  final List<Widget> _buildScreen = const [
    Dashboard(),
    SearchScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildScreen[_selectedindex],
          ],
        ),
        bottomNavigationBar: CustomNavigationBar(
            onItemSelected: (int value) {
              setState(() {
                _selectedindex = value;
              });
            },
            selectedIndex: _selectedindex));
  }
}
