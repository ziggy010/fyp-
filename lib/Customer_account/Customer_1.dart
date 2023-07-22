import 'package:flutter/material.dart';
import 'package:fyp/Customer_account/Customer_offers.dart';

class CustomerOne extends StatelessWidget {
  List capability = [
    'can do everything',
    'can\'t fix things.',
  ];

  List price = [
    '5',
    '10',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Plubming offers",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: capability.length,
                itemBuilder: (BuildContext context, int index) {
                  return CustomerOffers(
                    capability: capability[index],
                    price: price[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
