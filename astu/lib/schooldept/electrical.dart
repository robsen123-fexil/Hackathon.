// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class Electrical extends StatelessWidget {
  static String id = 'electrical';

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
                  image: AssetImage("images/electrical.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              // Use Expanded to ensure it takes remaining space
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start (left)
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "School Of Electrical & Computing",
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
                            "SoftWare Engineering",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Computer Engineering",
                            style: TextStyle(color: Colors.black),
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
                              "Electronics & Communication",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Power and Control",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
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
