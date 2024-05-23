// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class Mechanical extends StatelessWidget {
  static String id = 'mechanical';

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
                image: AssetImage("images/mechanical.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "School Of Mechanical",
              style: boldtext,
            ),
          ),
          Divider(height: 10),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "The department of Mechanical engineering offers B.sc and M.sc. program in mechanical engineering. The department has a strong research focus with research areas including: design, manufacturing, material, thermal science, fluid mechanics, robotics and control systems.",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Department",
              style: boldtext,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Mechanical Engineering",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Material Eng'",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Chemical Engineering",
                      style: TextStyle(color: Colors.black),
                    ),
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
