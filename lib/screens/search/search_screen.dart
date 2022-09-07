import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:workforce/components/widgets/dashboard_appbar.dart';
import 'package:workforce/components/widgets/search_screen_custom_card.dart';
import 'package:workforce/components/widgets_componets/custom_textfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';
import 'package:workforce/constants/dashboard_const.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const String searchScreenId = '/SearchScreen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            clipBehavior: Clip.none,
            keyboardDismissBehavior: kKeyboardScrollDismiss,
            padding: kScreenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DashboardAppBar(
                  displayUsername: displayUsername,
                  displayProfileIcon: displayProfileIcon,
                  showNotificatioBadge: showNotificationBadge,
                  displayCountry: displayCountry,
                  displayCity: displayCity,
                  displayCountryFlag: displayCountryFlag,
                  ontapped: () {
                    setState(() {
                      showNotificationBadge
                          ? showNotificationBadge = false
                          : showNotificationBadge = true;
                    });
                  },
                ),
                kSpace20,
                const Text(
                  'Available Jobs',
                  style: TextStyle(
                      color: AppColors.backgroundColorButtom,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: kTextFontFamily),
                ),
                kSpace20,
                Row(
                  children: [
                    const Expanded(
                        child: SizedBox(
                      height: 45,
                      child: CustomTextField(
                        label: 'Search Jobs',
                        icontype: Icons.search_rounded,
                        textFieldType: TextInputType.text,
                        prefixIcons: Icon(
                          IconlyBroken.search,
                          size: 25,
                          color: AppColors.profileCardColor,
                        ),
                      ),
                    )),
                    const SizedBox(
                      width: 30,
                    ),
                    Material(
                      elevation: kElevation,
                      borderRadius: kCircularRadius,
                      child: Container(
                        height: 45,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(color: Colors.transparent, blurRadius: 7)
                          ],
                        ),
                        child: const Icon(
                          IconlyBroken.filter_2,
                          color: AppColors.profileCardColor,
                        ),
                      ),
                    )
                  ],
                ),
                kSpace40,
                const SearchScreenCustomCard(),
                kSpace20,
                const SearchScreenCustomCard(),
              ],
            ),
          )),
    );
  }
}
