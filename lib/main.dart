import 'package:flutter/material.dart';
import 'package:portifolio/pages/desktopVersion.dart';
import 'package:portifolio/pages/mobileVersion.dart';
import 'package:portifolio/pages/responsiveLayout.dart';
import 'package:portifolio/utils/constant.dart';

import 'pages/tabletLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: iconBool ? darkTheme : lightTheme,
      home: const ResponsiveLayout(
        desktopLayout: DesktopLayout(),
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
