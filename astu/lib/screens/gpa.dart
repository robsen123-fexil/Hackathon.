// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Cumulative extends StatefulWidget {
  static String id = 'cummulative';
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
      appBar: AppBar(
        title: Text('CGPA Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: gradeController,
              decoration: InputDecoration(labelText: 'Grade (e.g., 4.0)'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            TextField(
              controller: creditHourController,
              decoration: InputDecoration(labelText: 'Credit Hours'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                addGradeAndCreditHour();
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text('Grades: $grades'),
            Text('Credit Hours: $creditHours'),
            SizedBox(height: 20),
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
              child: Text('Calculate CGPA'),
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
