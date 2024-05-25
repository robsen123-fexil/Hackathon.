// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class RoundedClub extends StatelessWidget {
  String image;
  String description;
  String photo1;
  String phot02;
  String name;

  RoundedClub(
      {super.key,
      required this.description,
      required this.image,
      required this.phot02,
      required this.photo1,
      required this.name
      
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                borderRadius:
                    BorderRadius.circular(75), // Half of the height/width
              ),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Text(
             description,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Place",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "   Lab 508 Room 10",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "   Lab 508 Room 9",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(photo1)),
                      // Half of the height/width
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(phot02)),
                      // Half of the height/width
                    ),
                  ),
                ),
              ],
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}
//  "Introducing CSEC (Computer Science and Engineering Club), your gateway to the world of technology, development, competition, and problem-solving. CSEC is dedicated to fostering a vibrant community of tech enthusiasts who are passionate about advancing their skills in software development, participating in competitive programming, and tackling real-world problems with innovative solutions.",