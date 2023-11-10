import 'package:flutter/material.dart';

class HomeScreenHeader extends StatefulWidget {
  const HomeScreenHeader({super.key});

  @override
  State<HomeScreenHeader> createState() => _HomeScreenHeaderState();
}

class _HomeScreenHeaderState extends State<HomeScreenHeader>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        width: double.infinity,
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(),
          child: TabBar(
            controller: _tabController, // Added TabController
            labelColor: Theme.of(context).colorScheme.tertiary,
            unselectedLabelColor: Theme.of(context).colorScheme.scrim,
            tabs: [
              const Tab(text: 'Today'),
              const Tab(text: 'Lounge'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle 'Notifications' press
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {
                      // Handle 'Profile' press
                    },
                  ),
                ],
              ),
            ],
            indicatorSize:
                TabBarIndicatorSize.tab, // Underline just the tab text
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
