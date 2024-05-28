// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:astu/offcampus/akukulubot.dart';
import 'package:astu/offcampus/barch.dart';
import 'package:astu/offcampus/shefmami.dart';
import 'package:astu/offcampus/shefmarta.dart';
import 'package:flutter/material.dart';

class Offcampuslist extends StatelessWidget {
  const Offcampuslist({super.key});
  static String id = 'offcampuslist';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OffCampus Menu List",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Offrounded(
                      title: "Shef Mami",
                      onpress: () {
                        Navigator.pushNamed(context, OffcampusMenu.id);
                      },
                    ),
                    Offrounded(
                      title: "Barch",
                      onpress: () {
                        Navigator.pushNamed(context, Barch.id);
                      },
                    ),
                    Offrounded(
                      title: "Shef marta",
                      onpress: () {
                        Navigator.pushNamed(context, ShefMarta.id);
                      },
                    ),
                    Offrounded(
                      title: "Akukulu bot",
                      onpress: () {
                        Navigator.pushNamed(context, Akukulubot.id);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Offrounded extends StatelessWidget {
  String title;
  VoidCallback onpress;

  Offrounded({required this.title, super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextButton(
          onPressed: onpress,
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
