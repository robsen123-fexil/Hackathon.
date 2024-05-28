// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, use_build_context_synchronously

import 'package:astu/screens/landings.dart';
import 'package:flutter/material.dart';
import 'database.dart';
import 'user_list_screen.dart';

class InsertScreen extends StatefulWidget {
  static const String id = "insert_screen";

  @override
  _InsertScreenState createState() => _InsertScreenState();
}

// the below are the states we have as stateful widget
class _InsertScreenState extends State<InsertScreen> {
  final DatabaseHelper _databaseHelper =
      DatabaseHelper(); // this one is for database  operation LIKE THE PRIMARY OPERATION IS INSERTION LIKE THE NAME STATES INSERTION STATE   THE DATABASE HELPER IS CLASS WE EXTENDED
  final TextEditingController _nameController =
      TextEditingController(); // THIS INSTANCE IS USEFULL FOR CAPTURE THE USER INPUT.
  final TextEditingController _emailController =
      TextEditingController(); // TEXTEDITINGCONTROLLER IS USEFULL TO CAPTURE USER INPUT'S
  final TextEditingController _departmentcontroller = TextEditingController();
  final TextEditingController _yearcontroller = TextEditingController();

  String _message =
      ''; // USED TO STORE STORE FEEEDBACK MESSAGE AFTER ATTEMPTING TO INSERT DATA

  void _addUser() async {
    // this method is used to insert data to database with controller
    // this controller or TextEDITINGCONTROLLER is usefull for capturing the text inserting.
    // the two below indicates have two attribute those two  attribute are re used to RETRIEVE THE CURRENT TEXTVALUE FROM 
    // THE _NAMECONTROOLLER AND ASSIGN THEM TO NAME , AND EMAIL 
    // CONCLUSION _NAMECOTROLLER IS USEFULL TO CAPTURE AND RETRIVE THE IN TEXTFIELD THOSE TEXTFIELDS ARE ASSIGN TO NAME AND EMAIL 
    final name = _nameController.text;
    final email = _emailController.text;

    try {
      // * ASYNC
      // THE REASON I USED ###ASYNC IS THIS FUNCTION WILL PERFOMR SOME TASK ASYNCHRONOUSLY.
      // THIS MEANS IT TAKES SOMETIMES TO COMPLETE ITS TASK
      //BUT IT ALLOWS OTHER  CODE TO RUN 
      // *AWAIT//
      // AWAIT MEANS WAIT UNTIL I FINISH THIS TASK LIKE THAT BEFORE JUSMPING TO OTHER 

      await _databaseHelper.insertUser({'name': name, 'email': email});
      // THE CLEAR PART IS USEFULL FOR CLEARING UP THE TEXTFIELD
      _nameController.clear();
      _emailController.clear();
      _message = 'User added successfully';
      // THE NAVIGATOR.PUSHREPLACEMENTNAMED IS THE REPLACE THE CURRENT SCREEN TO LANDING
      // Pushreplacementnamed is used to remove the current route from navigation stack we have in MAIN ROUTING PROCESS

      Navigator.pushReplacementNamed(context, LandingPage.id);
    } catch (e) {
      _message = e.toString();
    }
    // THIS PART UPDATES UI THE STATE'S 
    // PROPTING REBUILD THE USER
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/1.webp"),
                  fit: BoxFit.cover,
                ),
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
                height: 500,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(16.0),
                child: Center(
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _addUser,
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
