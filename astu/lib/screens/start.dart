// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:astu/screens/landings.dart';
import 'package:flutter/material.dart';
import 'database.dart';
import 'user_list_screen.dart';

class InsertScreen extends StatefulWidget {
  static const String id = "insert_screen";

  @override
  _InsertScreenState createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  final DatabaseHelper _databaseHelper = DatabaseHelper();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _departmentcontroller = TextEditingController();
   final TextEditingController _yearcontroller = TextEditingController();

  String _message = '';

  void _addUser() async {
    final name = _nameController.text;
    final email = _emailController.text;
    try {
      await _databaseHelper.insertUser({'name': name, 'email': email});
      _nameController.clear();
      _emailController.clear();
      _message = 'User added successfully';
      Navigator.pushReplacementNamed(context, LandingPage.id);
    } catch (e) {
      _message = e.toString();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/1.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color:
                Colors.black.withOpacity(0.5), // Adjust the opacity as needed
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 237, 237).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          filled: true,
                          fillColor: Colors
                              .white, // Optional: Background color for the text field
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          fillColor: Colors
                              .white, // Optional: Background color for the text field
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        controller: _departmentcontroller,
                        decoration: InputDecoration(
                          labelText: 'Department',
                          filled: true,
                          fillColor: Colors
                              .white, // Optional: Background color for the text field
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextField(
                        controller: _yearcontroller,
                        decoration: InputDecoration(
                          labelText: 'Year',
                          filled: true,
                          fillColor: Colors
                              .white, // Optional: Background color for the text field
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _addUser,
                      child: Text('Register' , style: TextStyle(color: Colors.black),),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
