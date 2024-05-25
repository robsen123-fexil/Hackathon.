// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Coursedetail extends StatelessWidget {
  final String name;
  final int credithr;
  final String description;
  final String prerequist;
  final String title;

  Coursedetail({
    Key? key,
    required this.credithr,
    required this.name,
    required this.prerequist,
    required this.description,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Course Name:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "Credit Hour:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              credithr.toString(),
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "Pre-Requisite:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              prerequist,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "Description:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
