import 'package:attendance_app/ui/screens/calender/calender_screen.dart';
import 'package:attendance_app/ui/screens/profile/profile_screen.dart';
import 'package:attendance_app/ui/screens/today/today_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  List<IconData> navigationIcons = [
    FontAwesomeIcons.calendarDays,
    FontAwesomeIcons.check,
    FontAwesomeIcons.user
  ];

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          CalenderScreen(),
          TodayScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: kToolbarHeight,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kToolbarHeight),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(2, 2),
              blurRadius: 10.0,
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kToolbarHeight),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              navigationIcons.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Icon(
                  navigationIcons[index],
                  color: currentIndex == index
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade800,
                  size: currentIndex == index ? 24 : 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
