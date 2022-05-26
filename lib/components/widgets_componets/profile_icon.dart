import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key? key,
    required this.cardColor,
    this.height = 60,
    this.width = 60,
    this.child,
  }) : super(key: key);

  final Color cardColor;
  final double height;
  final double width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: child,
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {Key? key, required this.cardColor, required this.child})
      : super(key: key);

  final Color cardColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: child,
    );
  }
}
