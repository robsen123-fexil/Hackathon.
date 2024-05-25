// ignore_for_file: prefer_const_constructors

import 'package:astu/curriculum/applied/biology.dart';
import 'package:astu/curriculum/applied/geology.dart';
import 'package:astu/curriculum/applied/pharmacy.dart';
import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class Applied extends StatelessWidget {
  static String id = 'applied';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "images/applied.jpeg",
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
                  "Applied Science",
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
                    padding: EdgeInsets.all(10),
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
                        Navigator.pushNamed(context, Biologyabout.id);
                      },
                      child: Text(
                        "Biology",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Geologyabout.id);
                      },
                      child: Text(
                        "Geology",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Pharmacy.id);
                      },
                      child: Text(
                        "Pharmacy",
                        style: TextStyle(color: Colors.black),
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
    );
  }
}
