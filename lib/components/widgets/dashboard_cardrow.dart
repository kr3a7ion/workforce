import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/dashboard_cards.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key, this.currency}) : super(key: key);

  final String? currency;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DashboardCard(
          flexV: 5,
          decorations: kDashboardCardDecoration,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Earning',
                          style: kSmallTextStyle.copyWith(
                              color: AppColors.textOffWhite)),
                      const SizedBox(
                          height: 20,
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: AppColors.textOffWhite,
                          ))
                    ]),
                const SizedBox(height: 20),
                Row(children: [
                  Text(
                    currency!,
                    style: const TextStyle(
                        fontSize: 28,
                        color: AppColors.textOffWhite,
                        fontFamily: kSmallAltFontFamily),
                  ),
                  const SizedBox(width: 10),
                  const Text('12,808',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: kTextFontFamily,
                          color: AppColors.pureWhiteBackground))
                ]),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                  SizedBox(
                    height: 100,
                   /// width: 100,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Image.asset(kWallet)),
                  ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        const DashboardCard(
            flexV: 4,
            decorations: BoxDecoration(
                color: AppColors.pureWhiteBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )))
      ],
    );
  }
}
