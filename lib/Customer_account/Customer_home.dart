import 'package:flutter/material.dart';
import 'package:fyp/Customer_account/Customer_1.dart';
import 'package:fyp/Customer_account/Customer_2.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    CustomerOne(),
    CustomerTwo(),
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
