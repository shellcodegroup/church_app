import 'package:church_app/text.dart';
import 'package:church_app/widgets/daily_verses_square.dart';
import 'package:flutter/material.dart';

class HomeMainContainer extends StatelessWidget {
  const HomeMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  'Daily Anouncement',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.scrim,
                  ),
                ),
                const Spacer(),
                dailyAnouncement,
                const Spacer(),
                Text(
                  'Verses of the day',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.scrim,
                  ),
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: ListView(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        DailyVersesSquare(),
                        SizedBox(
                          height: 10,
                        ),
                        DailyVersesSquare(),
                        SizedBox(
                          height: 10,
                        ),
                        DailyVersesSquare(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
