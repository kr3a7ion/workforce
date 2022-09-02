import 'package:flutter/material.dart';
import 'package:workforce/components/widgets_componets/custom_textfield.dart';
import 'package:workforce/constants/appcolors.dart';
import 'package:workforce/constants/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const String searchScreenId = '/SearchScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Available Jobs',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: kTextFontFamily),
          ),
          Row(
            children: const [
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: CustomTextField(
                    icontype: Icons.search_rounded,
                    textFieldType: TextInputType.text,
                    prefixIcons: Icon(Icons.search_rounded, size: 30, color: AppColors.textColor,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
