// ignore_for_file: prefer_const_constructors

import 'package:astu/component/roundecplace.dart';
import 'package:astu/component/roundedcontainer.dart';
import 'package:astu/component/roundedcourse.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/maps/cafe1.dart';
import 'package:astu/maps/central1.dart';

import 'package:astu/maps/deanoffice1.dart';
import 'package:astu/maps/dormitry.dart';
import 'package:astu/maps/electricalbuilding.dart';

import 'package:astu/maps/femaleslibraries.dart';
import 'package:astu/maps/freshmanclas1.dart';
import 'package:astu/maps/freshmanclass,%5D.dart';

import 'package:astu/maps/launge.dart';
import 'package:astu/maps/libraris.dart';
import 'package:astu/maps/clinics.dart';
import 'package:astu/maps/stadium.dart';

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
              RoundedContainer(title: "Place", ontap: (){
                Navigator.pop(context);
              }),
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
                  name: "School of Electrical",
                  onpress: () {
                    Navigator.pushNamed(context, ElecBuilding1.id);
                  }),
                  Divider(
                height: 10,
              ),
                  RoundedPlace(
                  name: "School of Mechanical",
                  onpress: () {
                    Navigator.pushNamed(context, ElecBuilding1.id);
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
                  name: "Cafe Building",
                  onpress: () {
                    Navigator.pushNamed(context, CafeBuilding1.id);
                  }),
              Divider(
                height: 10,
              ),
              RoundedPlace(
                  name: "ASTU Stadium",
                  onpress: () {
                    Navigator.pushNamed(context, Staduim.id);
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
