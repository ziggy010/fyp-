import 'package:flutter/material.dart';
import 'package:fyp/Plumber_account/Plumber_2.dart';
import 'package:fyp/Plumber_account/plumber_1.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class PlumberHomePage extends StatefulWidget {
  const PlumberHomePage({super.key});

  @override
  State<PlumberHomePage> createState() => _PlumberHomePageState();
}

class _PlumberHomePageState extends State<PlumberHomePage> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    PlumberOne(),
    PlumberTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 55,
            vertical: 20,
          ),
          child: GNav(
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            backgroundColor: Colors.green,
            color: Colors.black,
            activeColor: Colors.black,
            gap: 8,
            tabBackgroundColor: Colors.green.shade300,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
