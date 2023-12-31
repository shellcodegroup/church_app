import 'package:church_app/screens/default_home_screen.dart';
import 'package:church_app/screens/splash_screen.dart';
import 'package:church_app/text.dart';
import 'package:church_app/themes/dark_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: churchtitle,
      // theme: lightTheme,
      darkTheme: darkTheme,
      home: const DefaultHomeScreen(),
    );
  }
}
