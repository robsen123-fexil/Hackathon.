// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cumulative extends StatefulWidget {
  static String id = 'cumulative';
  @override
  _CumulativeState createState() => _CumulativeState();
}

class _CumulativeState extends State<Cumulative> {
  final TextEditingController gradeController = TextEditingController();
  final TextEditingController creditHourController = TextEditingController();
  List<double> grades = [];
  List<int> creditHours = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      Text("GPA & CGPA",
                          style: boldtext.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [TextField(
                  controller: gradeController,
                  decoration: InputDecoration(labelText: 'Grade'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
                TextField(
                  controller: creditHourController,
                  decoration: InputDecoration(labelText: 'Credit Hours'),
                  keyboardType: TextInputType.number,
                ),
                
          ]),
            ),
            
           
            SizedBox(height: 20),
            Column(
              children: [
                Text('Grades: $grades'),
                 Text('Credit Hours: $creditHours'),
                ]),
           
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                double cgpa = calculateCGPA();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('CGPA'),
                      content: Text(
                          'Your Cumulative Grade Point Average (CGPA) is: $cgpa'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Calculate CGPA' , style: TextStyle(color: Colors.black , fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }

  void addGradeAndCreditHour() {
    double grade = double.tryParse(gradeController.text) ?? 0;
    int creditHour = int.tryParse(creditHourController.text) ?? 0;

    setState(() {
      grades.add(grade);
      creditHours.add(creditHour);
      gradeController.clear();
      creditHourController.clear();
    });
  }

  double calculateCGPA() {
    double totalPoints = 0;
    int totalCreditHours = 0;

    for (int i = 0; i < grades.length; i++) {
      totalPoints += grades[i] * creditHours[i];
      totalCreditHours += creditHours[i];
    }

    return totalCreditHours == 0 ? 0 : totalPoints / totalCreditHours;
  }
}
