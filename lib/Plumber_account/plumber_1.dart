import 'package:flutter/material.dart';
import 'package:fyp/Plumber_account/plumber_bottom.dart';
import 'package:fyp/Plumber_account/plumber_home_mid.dart';
import 'package:fyp/Plumber_account/plumber_home_top.dart';
import 'package:fyp/Plumber_account/plumber_our_services.dart';

class PlumberOne extends StatelessWidget {
  const PlumberOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: ListView(
                children: [
                  PlumberHomeTop(),
                  //adding welcome text
                  PlumberHomeMid(),
                  PlumberBottom(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
