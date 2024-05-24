// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone extends StatelessWidget {
  static String id = 'phone';
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 9,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage("images/landing.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ))),
                        SizedBox(
                          height: 50,
                        ),
                        Text("Phone",
                            style: boldtext.copyWith(color: Colors.white))
                      ],
                    ),
                   
                    
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  RoundedPhone(
                    name: "Ambulance Service",
                    no: "+251940046254",
                  ),
                  Divider(
                    height: 2, 
                    color: Colors.black,

                  
                  ),

                  RoundedPhone(
                    name: "Student Police",
                    no: "+251911223344",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Fire Service",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                   RoundedPhone(
                    name: "Dean Secretary",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                   RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),
                  RoundedPhone(
                    name: "Dormitory",
                    no: "+251933445566",
                  ),
                  Divider(
                    height: 2,
                    color: Colors.black,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedPhone extends StatelessWidget {
  final String name;
  final String no;

  const RoundedPhone({super.key, required this.name, required this.no});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ExpansionTile(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
        title: Text(
          name,
          style: TextStyle(fontSize: 18, ),
        ),
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    final url = 'tel:$no';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url));
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    no,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
