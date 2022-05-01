import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/dashboard_appbar.dart';
import 'package:workforce/components/widgets/dashboard_cardrow.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static const String dashboardId = '/DashboardScreen';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackground,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
        child: Column(
          children: const [
            DashboardAppBar(),
            SizedBox(height: 30),
            CardRow()
          ],
        ),
      ),
    );
  }
}
