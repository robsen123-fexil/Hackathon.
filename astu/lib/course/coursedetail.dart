// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_super_parameters, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            SizedBox(height: 20),
            
           
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
             SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 180, 179, 179),
                backgroundColor: Color.fromARGB(255, 209, 207, 207), // Text color
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // canlaunch have differnt schema those http:$url  , tel:$url , sms:$url , mailto$url , 
              onPressed: () async {

                const url =
                    'https://drive.google.com/drive/folders/1YUPBclCL9UPQnS3pQaGKq5smSk0CFj67?usp=drive_link';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Text(
                "Get Course Outline",
                style: TextStyle(
                    color: Color.fromARGB(255, 39, 39, 39), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
