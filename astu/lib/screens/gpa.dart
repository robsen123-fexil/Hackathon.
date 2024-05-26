// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CumulativeCgpaCalculator());
}

class CumulativeCgpaCalculator extends StatefulWidget {
  static String id = 'cgpa';
  @override
  _CumulativeCgpaCalculatorState createState() =>
      _CumulativeCgpaCalculatorState();
}

class _CumulativeCgpaCalculatorState extends State<CumulativeCgpaCalculator> {
  List<double> prevGpas = []; // List to store previous semester GPAs
  List<double> prevCreditHours =
      []; // List to store previous semester credit hours
  double cgpa = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        
        body: Column(
          
          
          children: <Widget>[
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
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Enter Previous Semester GPAs and Credit Hours',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: prevGpas.length + 1,
                itemBuilder: (context, index) {
                  if (index == prevGpas.length) {
                    return TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 181, 179, 179),
                      ),
                      onPressed: () {
                        setState(() {
                          prevGpas.add(0.0);
                          prevCreditHours.add(0.0);
                        });
                      },
                      child: Text(
                        'Add Semester',
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }
                  return Row(
                    children: <Widget>[
                      Flexible(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (String value) {
                            prevGpas[index] = double.tryParse(value) ?? 0.0;
                          },
                          decoration: InputDecoration(labelText: 'GPA'),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Flexible(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          onChanged: (String value) {
                            prevCreditHours[index] =
                                double.tryParse(value) ?? 0.0;
                          },
                          decoration:
                              InputDecoration(labelText: 'Credit Hours'),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 130, 129, 133),
              ),
              onPressed: () {
                setState(() {
                  double totalCreditHours = prevCreditHours
                      .reduce((value, element) => value + element);
                  double totalGradePoints = 0.0;
                  for (int i = 0; i < prevGpas.length; i++) {
                    totalGradePoints += prevGpas[i] * prevCreditHours[i];
                  }
                  cgpa = totalGradePoints / totalCreditHours;
        
                  // Show the CGPA result in an alert dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Cumulative CGPA'),
                        content: Text(
                            'Your Cumulative CGPA is: ${cgpa.toStringAsFixed(2)}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                });
              },
              child: Text(
                'Calculate CGPA',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 252, 97, 97),
              ),
              onPressed: () {
                setState(() {
                  // Clear the lists to start over
                  prevGpas.clear();
                  prevCreditHours.clear();
                  cgpa = 0.0;
                });
              },
              child: Text(
                'Clear',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
