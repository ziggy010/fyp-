import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'login_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      setState(() {
        _image = img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  //radio button groups

  String category = "Customer";

  //adding bottom modal sheet to add pictures.
  Future _displayBottomsheet() {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (context) {
          return Container(
            height: 200,
            color: Colors.green,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pickImage(ImageSource.camera);
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              'images/camera.png',
                            ),
                          )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pickImage(ImageSource.gallery);
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'images/galler.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        children: [
          //adding profile picture of the user.
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.green,
              child: Container(
                child: _image == null
                    ? Image.asset(
                        'images/avatar.png',
                      )
                    : Text('hello'),
              ),
            ),
          ),
          //adding sized box to have space between profile picture and the button.
          const SizedBox(
            height: 18,
          ),
          //Pick button to add the picture.
          GestureDetector(
            //adding funtion to add pictures.
            onTap: () {
              _displayBottomsheet();
            },
            child: const Text(
              'Add Picture',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
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
            height: 30,
          ),
          const Text(
            'How would you like to register?',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Radio button selection.
          Row(
            children: [
              Radio(
                activeColor: Colors.green,
                value: "Customer",
                groupValue: category,
                onChanged: (value) {
                  setState(() {
                    category = value.toString();
                  });
                },
              ),
              Text('Customer'),
            ],
          ),
          Row(
            children: [
              Radio(
                activeColor: Colors.green,
                value: "Plumber",
                groupValue: category,
                onChanged: (value) {
                  setState(() {
                    category = value.toString();
                  });
                },
              ),
              Text('Plumber'),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Register'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
