import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key, this.decorations, this.child, this.flexV})
      : super(key: key);

  final Decoration? decorations;
  final Widget? child;
  final int? flexV;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexV!,
      child: Container(
        height: 240,
        child: child,
        decoration: decorations,
      ),
    );
  }
}
