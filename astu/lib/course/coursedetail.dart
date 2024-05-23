// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Coursedetail extends StatelessWidget {
  String name;
  int credithr;
  String description;
  String prerequist;
  String title;
  Coursedetail(
      {super.key,
      required this.credithr,
      required this.name,
      required this.prerequist,
      required this.description,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course Name: $title",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                "Credit Hour: $credithr",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text("Pre-Request: $prerequist"  , style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(height: 20 ),
              Text(
                "Description:",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
