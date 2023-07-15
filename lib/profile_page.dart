// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'changePassword.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.green,
            ),
            width: size.width,
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 60),
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'First Name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Last Name',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Contact',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'DoB',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Change Password'),
              onPressed: () {
                //Navigator.of(context).push(
                //MaterialPageRoute(builder: (context)=> const ChangePasswordPage()),
                //);
              },
            ),
          ),
        ],
      ),
    );
  }
}
