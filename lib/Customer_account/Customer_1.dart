import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Customer_account/Customer_home_bottom.dart';
import 'package:fyp/Customer_account/Customer_home_mid.dart';
import 'package:fyp/Customer_account/customer_home_top.dart';
import 'package:fyp/Plumber_account/plumber_home_top.dart';
import 'package:fyp/Plumber_account/plumber_our_services.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class CustomerOne extends StatelessWidget {
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
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CustomerHomeTop(),
                      CustomerHomeMid(),
                      CustomerHomeBottom(),
                      CustomerSerivces(
                        title: 'Kitchen drainage',
                        desc: 'We can solve it',
                        price: 300,
                        iconValue: Icons.water_damage_outlined,
                      ),
                      CustomerSerivces(
                        title: 'Toilet drainage',
                        desc: 'We can solve it',
                        price: 200,
                        iconValue: Icons.bathroom_outlined,
                      ),
                      CustomerSerivces(
                        title: 'Basin drainage',
                        desc: 'We can solve it',
                        price: 500,
                        iconValue: Icons.water_drop_outlined,
                      ),
                      CustomerSerivces(
                        title: 'Pipeline Management',
                        desc: 'We can solve it',
                        price: 900,
                        iconValue: Icons.pin_drop_rounded,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerSerivces extends StatelessWidget {
  String title;
  String desc;
  int price;
  IconData? iconValue;

  CustomerSerivces({
    required this.title,
    required this.desc,
    required this.price,
    required this.iconValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 14,
      ),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 235, 235),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                child: Icon(
                  iconValue,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Price: Rs $price',
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          QuickAlert.show(
                              context: context,
                              type: QuickAlertType.confirm,
                              text: 'You want to place an order?',
                              confirmBtnText: 'Order',
                              confirmBtnColor: Colors.green,
                              onConfirmBtnTap: () {
                                Navigator.of(context).pop();
                                final snackBar = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'Order Accepted',
                                    message:
                                        'You\'ve successfully accepted the order.',

                                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                    contentType: ContentType.success,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);
                              });
                        },
                        child: Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              "Order",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
