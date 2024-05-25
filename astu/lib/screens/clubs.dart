// ignore_for_file: prefer_const_constructors

import 'package:astu/clubs/Roundedclub.dart';
import 'package:astu/clubs/a2sv.dart';
import 'package:astu/clubs/antidrug.dart';
import 'package:astu/clubs/csec.dart';
import 'package:astu/clubs/spacescience.dart';
import 'package:astu/component/roundedclub.dart';
import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';

class Clubs extends StatelessWidget {
  static String id = 'clubs';
  const Clubs({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Clubs",
          style: boldtext,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Roundedclub(
                title: "CSEC ASTU",
                description:
                    "The CSEC (Computer Science and Engineering Collaboration) Club is a vibrant community of software enthusiasts and collaborative teams dedicated to pushing the boundaries of technology through innovation and teamwork.",
                image: "images/csec.jpeg",
                onpress: () {
                  Navigator.pushNamed(context, Csec.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {
                  Navigator.pushNamed(context, Space.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Anti Drug Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/antidrug.jpeg",
                onpress: () {
                  Navigator.pushNamed(context, AntiDrug.id);
                },
              ),
              Roundedclub(
                title: "A2SV",
                description:
                    "The  is related to  a dynamic group dedicated to exploring and understanding and Solving Probklem. Our club offers members the opportunity to delve into various aspects of Asce of Interview question ",
                image: "images/antidrug.jpeg",
                onpress: () {
                  Navigator.pushNamed(context, A2sv.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Space Science Club",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/Space.jpeg",
                onpress: () {},
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
