// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:astu/curriculum/civil/arch.dart';
import 'package:astu/curriculum/civil/civil.dart';
import 'package:astu/curriculum/civil/water.dart';
import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class Civil extends StatelessWidget {
  static String id = 'civil';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    "images/civil.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "School Of Civil & Architecture",
                    style: boldtext,
                  ),
                ),
                Divider(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "The department of Mechanical engineering offers B.sc and M.sc. program in mechanical engineering. The department has a strong research focus with research areas including: design, manufacturing, material, thermal science, fluid mechanics, robotics and control systems.",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Department",
                        style: boldtext,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Civilabout.id);
                        },
                        child: Text(
                          "Civil Engineering",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Archabout.id);
                          },
                          child: Text(
                            "Architectural Eng'",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Waterabout.id);
                          },
                          child: Text(
                            "Water Engineering",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
