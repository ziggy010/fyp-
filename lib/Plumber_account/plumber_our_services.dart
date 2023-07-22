import 'package:flutter/material.dart';

class PlumberOurServices extends StatelessWidget {
  const PlumberOurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 14,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Our Services',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'poppins',
                  fontSize: 20,
                ),
              ),
              Row(
                children: const [
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.green,
                    size: 17,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          ServicesContainer(),
          ServicesContainer(),
          ServicesContainer(),
        ],
      ),
    );
  }
}

class ServicesContainer extends StatelessWidget {
  const ServicesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
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
              const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                child: Icon(
                  Icons.water_damage_rounded,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              const SizedBox(
                width: 26,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Water Damage',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'We can repair water damage at minimal price.',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 10,
                    ),
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
