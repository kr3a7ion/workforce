import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key, this.decorations, this.child}) : super(key: key);

  final Decoration? decorations;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        child: child,
        decoration: decorations,
      ),
    );
  }
}
