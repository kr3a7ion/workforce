import 'package:flutter/material.dart';
import 'package:workforce/components/widgets/dashboard_appbar.dart';
import 'package:workforce/components/widgets/dashboard_cardrow.dart';
import 'package:workforce/components/widgets/navigation_bar.dart';
import 'package:workforce/components/widgets/project_cardlist.dart';
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
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
        child: Column(
          children: [
            const DashboardAppBar(),
            const SizedBox(height: 30),
            CardRow(
              currency: '\$',
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Projects',
                    style: kSmallTextStyle.copyWith(
                      color: AppColors.backgroundColorButtom,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  'See all',
                  style: kSmallTextStyle.copyWith(
                      color: AppColors.smallCardColor, fontSize: 16),
                )
              ],
            ),
            kSpace20,
            CardTileList(),
            kSpace10,
            CardTileList(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}