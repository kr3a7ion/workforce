import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_card.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key, this.currency}) : super(key: key);

  final String? currency;

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
                        currency!,
                        style: const TextStyle(
                            fontSize: 30,
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
                  ]),
                ),
                Positioned(
                  bottom: -35,
                  left: 12,
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child:
                          SizedBox(height: 170, child: Image.asset(kWallet))),
                ),
                Positioned(
                  bottom: 75,
                  left: 120,
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(height: 55, child: Image.asset(kMoney))),
                ),
                Positioned(
                  bottom: 100,
                  left: 80,
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(height: 40, child: Image.asset(kMoney))),
                ),
                Positioned(
                  bottom: 120,
                  left: 120,
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(height: 40, child: Image.asset(kMoney))),
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
                                  )),
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
                            const Text('1000+',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: kTextFontFamily,
                                    color: AppColors.backgroundColorButtom)),
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
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: SizedBox(
                          height: 130, child: Image.asset(kDashBoardChart))),
                ),
              ],
            ))
      ],
    );
  }
}
