import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color.fromARGB(255, 24, 24, 24),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      Icons.account_box,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 35,
                    ),
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
