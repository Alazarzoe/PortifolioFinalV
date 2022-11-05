import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

bool iconBool = false;

IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.brightness_2;

ThemeData lightTheme = ThemeData(
  fontFamily: 'Kanit',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color.fromARGB(255, 194, 194, 194),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 0, 0, 0),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  fontFamily: 'Kanit',
  scaffoldBackgroundColor: Color.fromARGB(255, 194, 194, 194),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 0, 0, 0),
  ),
);

Future<void> urlLauncher(url) async {
  final bool launched = await launchUrl(Uri.parse(url));
}
