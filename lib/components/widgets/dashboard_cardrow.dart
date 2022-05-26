import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_card.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class CardRow extends StatelessWidget {
  CardRow({Key? key, required this.currency, required this.walletBalance, required this.workHours})
      : super(key: key);

  final String currency;
  final String walletBalance;
  final String workHours;

  final Widget moneyImage = Image.asset(kMoney);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCard(
            flexV: 5,
            decorations: kDashboardCardDecoration,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Earning',
                              style: kSmallTextStyle.copyWith(
                                  color: AppColors.textOffWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: kTextFontFamily)),
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
                        currency,
                        style: const TextStyle(
                            fontSize: 30,
                            color: AppColors.textOffWhite,
                            fontFamily: kSmallAltFontFamily),
                      ),
                      const SizedBox(width: 10),
                      Text(walletBalance,
                          style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: kTextFontFamily,
                              color: AppColors.pureWhiteBackground))
                    ]),
                  ]),
                ),
                Positioned(
                  bottom: -35,
                  left: 12,
                  child: SizedBox(height: 170, child: Image.asset(kWallet)),
                ),
                Positioned(
                  bottom: 75,
                  left: 120,
                  child: SizedBox(height: 55, child: moneyImage),
                ),
                Positioned(
                  bottom: 100,
                  left: 80,
                  child: SizedBox(height: 40, child: moneyImage),
                ),
                Positioned(
                  bottom: 120,
                  left: 120,
                  child: SizedBox(height: 40, child: moneyImage),
                ),
              ],
            )),
        const SizedBox(width: 12),
        CustomCard(
            flexV: 4,
            decorations: const BoxDecoration(
                color: AppColors.pureWhiteBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Statistic',
                                  style: kSmallTextStyle.copyWith(
                                      color: AppColors.backgroundColorButtom,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              const SizedBox(
                                  height: 20,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: AppColors.textColorGrey,
                                  ))
                            ]),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("$workHours+",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: kTextFontFamily,
                                    color: AppColors.smallCardColor)),
                            const SizedBox(
                              width: 10,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                'Hours',
                                style: kSmallTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                ),
                Positioned(
                  bottom: -1,
                  left: 15,
                  child: SizedBox(
                      height: 130, child: Image.asset(kDashBoardChart)),
                ),
              ],
            ))
      ],
    );
  }
}
