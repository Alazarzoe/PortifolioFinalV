import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
  });

  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout;
        } else if (constraints.maxWidth < 1100) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
