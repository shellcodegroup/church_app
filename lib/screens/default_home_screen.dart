import 'package:church_app/screens/home_outline_screen.dart';
import 'package:church_app/widgets/home_header.dart';
import 'package:church_app/widgets/home_main_container.dart';
import 'package:flutter/material.dart';

class DefaultHomeScreen extends StatefulWidget {
  const DefaultHomeScreen({
    super.key,
  });

  @override
  State<DefaultHomeScreen> createState() => _DefaultHomeScreenState();
}

class _DefaultHomeScreenState extends State<DefaultHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeScreenHeader(),
          HomeMainContainer(),
        ],
      ),
    );
  }
}
