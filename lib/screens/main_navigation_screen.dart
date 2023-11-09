import 'package:church_app/widgets/home_header.dart';
import 'package:church_app/widgets/home_main_container.dart';
import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({
    super.key,
  });

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          HomeScreenHeader(),
          HomeMainContainer(),
        ],
      ),
    );
  }
}
