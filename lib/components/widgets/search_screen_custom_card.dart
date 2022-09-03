import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:workforce/components/widgets/small_widget_methods.dart';
import 'package:workforce/components/widgets_componets/custom_cardtile.dart';
import 'package:workforce/components/widgets_componets/custom_mini_card.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class SearchScreenCustomCard extends StatelessWidget {
  const SearchScreenCustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCardTile(
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: const MiniCardText(
              cardDecoration: BoxDecoration(
                color: AppColors.smallCardColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FittedBox(
                    child: Center(
                        child: Text(
                  'CK',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold),
                ))),
              ),
            ),
            title: const Expanded(
              child: Text(
                'iOS Developer for\nCodispace',
                softWrap: true,
                maxLines: 2,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  wordSpacing: 0.5,
                  fontSize: 20,
                  color: AppColors.textColor,
                ),
              ),
            ),
            trailing: TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.more_vert_rounded,
                color: AppColors.textColor,
              ),
            ),
          ),
          kSpace20,
          jobDescriptionWidget(
              icon: IconlyBold.time_circle, text: 'Full Time'),
          kSpace10,
          jobDescriptionWidget(
              icon: IconlyBold.star, text: 'Expert Level'),
          kSpace10,
          jobDescriptionWidget(
              icon: IconlyBold.location,
              text: 'Remote or On-Site Role'),
          kSpace20,

          //From this Point down
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              requiredSkillBubble(text: 'Xcode'),
              kSpaceW10,
              requiredSkillBubble(text: 'RxSwift'),
              kSpaceW10,
              requiredSkillBubble(text: 'Swift UI'),
            ],
          ),
          kSpace10,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              requiredSkillBubble(text: 'Objective-C'),
              kSpaceW10,
              requiredSkillBubble(text: 'JSON'),
            ],
          ),
          // here needs Refactoring
          kSpace20,
          jobApplyReviewButton(),
          kSpace20
        ],
      ),
    );
  }
}
