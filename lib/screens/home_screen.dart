import 'package:flutter/material.dart';
import 'package:haspr_assignment/screens/notifications_screen.dart';
import 'package:haspr_assignment/screens/post_ad_screen.dart';
import 'package:haspr_assignment/screens/seeker_home_screen.dart';

import 'history_screen.dart';

const screensList = [
  SeekerHomeScreen(),
  HistoryScreen(),
  NotificationScreen(),
  PostAdScreen(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "Seeker Home Screen"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.black,
              ),
              label: "History"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.post_add,
                color: Colors.black,
              ),
              label: "Post Advertisement"),
        ],
      ),
    );
  }
}
