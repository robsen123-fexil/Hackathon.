// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields

import 'package:astu/constants/constant.dart';
import 'package:astu/screens/discover.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:astu/screens/gpa.dart';

// Define the Subject class
class Subject {
  final String grade;  // grade are A , A+ , ....
  final double points; // points 2.5 , 4, , 3.75
  final int creditHours;  // summation of total point

  Subject({
    required this.grade,   // this one is neccesary because when we try to add a new subject we dont have to initailized string  double or int just by mentioning Subject we can pass the value. 
    required this.points,
    required this.creditHours,
  });
}

// Create the GradeInputForm widget
class GradeInputForm extends StatefulWidget {
  const GradeInputForm({super.key});
  static String id = 'cgpa';

  @override
  _GradeInputFormState createState() => _GradeInputFormState();
}

class _GradeInputFormState extends State<GradeInputForm> {
  // Initialize a list of Subject objects
  final List<Subject> subjects = [];  // in here im initailezed impty list to store subject i have added

  final _formKey = GlobalKey<FormState>(); // in here the idea is to validate and gives creating a unique ley form for the forms


  String _selectedGrade = 'A';
  int _creditHours = 1;

  final Map<String, double> _gradePoints = {
    'A+': 4.0,
    'A': 4.0, 
    'A-': 3.75,
    'B+': 3.5,
    'B': 3.0,   // in here i have to assocaite every grade with its qwith its credit hour 
    'B-': 2.75,
    'C+': 2.5,
    'C': 2.0,
    'C-': 1.75,
    'D': 1.0,
    'F': 0.0,
  };

  // Add a method to add a new Subject to the list
  void _addSubject() {
    if (_formKey.currentState!.validate()) { // this one is used to validate the inputs is it is good it add to subjects list
      _formKey.currentState!.save();
      setState(() {    // as usual set state  is used to update ui reflet the changes suddenly
        subjects.add(Subject(
          grade: _selectedGrade,
          points: _gradePoints[_selectedGrade]!,
          creditHours: _creditHours,
        ));
      });
    }
  }

  // Add a method to clear the input fields and the list of subjects
  void _clearAll() {
    setState(() {
      subjects.clear();
      _selectedGrade = 'A';
      _creditHours = 1;
    });
  }

  // Calculate GPA using the list of Subject objects
  double _calculateGPA() {
    double totalPoints = 0;
    int totalCreditHours = 0;

    for (var subject in subjects) {
      totalPoints += subject.points * subject.creditHours;
      totalCreditHours += subject.creditHours;
    }

    return totalCreditHours == 0 ? 0 : totalPoints / totalCreditHours;
  }

  void showResult() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Result"),
          content: Text("Your GPA: ${_calculateGPA().toStringAsFixed(2)}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void getCgpa() {
    Navigator.pushNamed(context, CumulativeCgpaCalculator.id);
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 0) {

    } else if (index == 1) {
      getCgpa();
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                    Text("GPA ",
                        style: boldtext.copyWith(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DropdownButtonFormField<String>(
                      value: _selectedGrade,
                      items: _gradePoints.keys.map((String grade) {
                        return DropdownMenuItem<String>(
                          value: grade,
                          child: Text(grade),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedGrade = newValue!;
                        });
                      },
                      onSaved: (newValue) {
                        _selectedGrade = newValue!;
                      },
                      decoration: InputDecoration(
                        labelText: 'Select Grade',
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Credit Hours',
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter credit hours';
                        }
                        final n = int.tryParse(value);
                        if (n == null || n <= 0) {
                          return 'Please enter a valid number';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _creditHours = int.parse(value!);
                      },
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _addSubject,
                          child: Text(
                            'Add Subject',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10),
                        
                        ElevatedButton(
                          onPressed: _clearAll,
                          child: Text(
                            'Clear All',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showResult();
                      },
                      child: Text(
                        'Result',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Subjects:',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: subjects.length,
                        itemBuilder: (context, index) {
                          final subject = subjects[index];
                          return ListTile(
                            title: Text(
                              '${subject.grade} : ${subject.creditHours} Credit Hours',
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'GPA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spellcheck),
            label: 'CGPA',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        onTap: _onItemTapped,
      ),
    );
  }
}
