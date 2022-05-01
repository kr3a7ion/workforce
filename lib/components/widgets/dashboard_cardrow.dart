import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/dashboard_cards.dart';
import 'package:workforce/constants/constants.dart';

class CardRow extends StatelessWidget {
  const CardRow({Key? key, this.currency}) : super(key: key);

  final String? currency;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DashboardCard(
          decorations: kDashboardCardDecoration,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                Text('Earning', style: kSmallTextStyle),
                SizedBox(height: 20, child: Icon(Icons.arrow_forward_ios))
              ]),
              Row(
                children: [Text(currency!), ],
              )
            ],
          ),
        )
      ],
    );
  }
}
