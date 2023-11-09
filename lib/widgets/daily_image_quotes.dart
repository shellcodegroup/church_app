import 'package:flutter/material.dart';

class DailyImageQuotes extends StatelessWidget {
  const DailyImageQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width - 30,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
