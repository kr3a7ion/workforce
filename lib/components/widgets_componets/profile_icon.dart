import 'package:flutter/material.dart';


class ProfileIcon extends StatelessWidget {
  const ProfileIcon(
      {Key? key, required this.cardColor, required this.profileImage})
      : super(key: key);

  final Color cardColor;
  final String profileImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Image.asset(profileImage),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {Key? key, required this.cardColor, required this.profileIcon})
      : super(key: key);

  final Color cardColor;
  final IconData profileIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Icon(profileIcon),
    );
  }
}
