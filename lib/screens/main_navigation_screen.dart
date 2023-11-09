import 'package:church_app/screens/bible_screen.dart';
import 'package:church_app/screens/calendar_screen.dart';
import 'package:church_app/screens/default_home_screen.dart';
import 'package:church_app/screens/more_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _HomeScreenState();
}

int currentPage = 0;
List<Widget> pages = [
  const DefaultHomeScreen(),
  const BibleScreen(),
  const CalendarScreen(),
  const MoreScreen()
];

class _HomeScreenState extends State<MainNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: pages[currentPage],
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Theme.of(context).colorScheme.tertiary,
            unselectedItemColor: Theme.of(context).colorScheme.shadow,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            currentIndex: currentPage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_rounded,
                  size: 28,
                ),
                label: 'Bible',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month_outlined,
                  size: 28,
                ),
                label: 'Activities',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  size: 28,
                ),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
