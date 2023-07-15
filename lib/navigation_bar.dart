// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'notification_page.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = [HomePage(), Service(), NotificationPage(), ProfilePage()];

  int selectedIndex = 0;

  void ontappedItem(int Index) {
    setState(() {
      selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontappedItem,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.greenAccent,
          unselectedItemColor: Colors.lightGreen.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: 'Services', icon: Icon(Icons.home_repair_service)),
            BottomNavigationBarItem(
                label: 'Notification',
                icon: Icon(Icons.notification_important)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          ]),
    );
  }
}
