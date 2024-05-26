// ignore_for_file: prefer_const_constructors

import 'package:astu/component/roundecplace.dart';
import 'package:astu/component/roundedcourse.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/maps/central1.dart';

import 'package:astu/maps/deanoffice1.dart';
import 'package:astu/maps/dormitry.dart';

import 'package:astu/maps/femaleslibraries.dart';
import 'package:astu/maps/freshmanclas1.dart';
import 'package:astu/maps/freshmanclass,%5D.dart';

import 'package:astu/maps/launge.dart';
import 'package:astu/maps/libraris.dart';
import 'package:astu/maps/clinics.dart';

import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({super.key});
  static String id = 'place';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        SizedBox(height: 50),
                        Text("Place",
                            style: boldtext.copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Central Library",
                  onpress: () {
                    Navigator.pushNamed(context, Central1.id);
                  }),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Dean Office",
                  onpress: () {
                    Navigator.pushNamed(context, Deanoffice1.id);
                  }),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Dormitory",
                  onpress: () {
                    Navigator.pushNamed(context, Dorm1.id);
                  }),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Females Library",
                  onpress: () {
                    Navigator.pushNamed(context, Females1.id);
                  }),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Amphy & Launge",
                  onpress: () {
                    Navigator.pushNamed(context, Launge1.id);
                  }),
              Divider(
                height: 10,
              ),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "Freshman Class",
                  onpress: () {
                    Navigator.pushNamed(context, Freshmanclas1.id);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
