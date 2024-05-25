// ignore_for_file: prefer_const_constructors

import 'package:astu/component/roundecplace.dart';
import 'package:astu/component/roundedcourse.dart';
import 'package:astu/maps/libraries.dart';
import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({super.key});
  static String id = 'place';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              RoundedPlace(
                name: "Libraries",
                onpress: () {
                  Navigator.pushNamed(context, SampleMap.id);
                },
              ),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Clinic", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Dean Office", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "FreshMan Dorm", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Females Dorm", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Launge & shops", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Cafe", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Freshman Class", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Student Preziendent Office", onpress: () {}),
              Divider(
                height: 10,
              ),
              RoundedPlace(name: "Book Store", onpress: () {}),
              Divider(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
