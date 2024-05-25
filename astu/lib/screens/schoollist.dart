// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:astu/schooldept/applied.dart';
import 'package:astu/schooldept/civil.dart';
import 'package:astu/schooldept/electrical.dart';
import 'package:astu/schooldept/mechanical.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/component/roundedschool.dart';

class SchoolList extends StatefulWidget {
  static String id = 'schoollist';
  const SchoolList({super.key});

  @override
  State<SchoolList> createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: ListView(
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ))),
                  SizedBox(
                    height: 50,
                  ),
                  Text("Curriculum", style: boldtext.copyWith(color: Colors.white))
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text("   Pre-Engineering", style: boldtext),
          Divider(height: 10,),
          SizedBox(height: 10),
          Hero(
            tag: 'electrical',
            child: RoundedSchool(
              title: "School of Electrical",
              image: 'images/electrical.jpeg',
              dept: "4 dept's",
              description:
                  'The School of Electrical and Computing Engineering (ECE) encompasses specialized departments to prepare students for advanced technological careers. The Software Engineering department focuses on software systems, while Computer Science covers algorithms and AI. Power and Control emphasizes electrical power systems, and Electronics and Communication delves into electronic devices and modern communication systems.',
              onpress: () {
                Navigator.pushNamed(context, Electrical.id);
              },
            ),
          ),
          SizedBox(height: 20),
          Hero(
            tag: 'mechanical',
            child: RoundedSchool(
              title: "School of Mechanical",
              image: 'images/mechanical.jpeg',
              dept: "3 dept",
              description:
                  'The School of Mechanical Engineering offers a comprehensive education with specialized departments tailored for diverse career paths. The Mechanical Department focuses on the design and analysis of mechanical systems.',
              onpress: () {
                Navigator.pushNamed(context, Mechanical.id);
              },
            ),
          ),
          SizedBox(height: 20),
          Hero(
            tag: 'civil',
            child: RoundedSchool(
              title: "School of Civil",
              image: 'images/civil.jpeg',
              dept: '2 dept',
              description:
                  "The School of Civil Engineering provides a robust education across various disciplines crucial for infrastructure development and urban planning. Students delve into specialized areas such as Structural Engineering, focusing on the design and analysis of buildings and bridges.",
              onpress: () {
                Navigator.pushNamed(context, Civil.id);
              },
            ),
          ),
          Divider(height: 20),
          Text("   Pre-Science", style: boldtext),
          SizedBox(height: 10),
          Hero(
            tag: 'applied',
            child: RoundedSchool(
              title: "Applied Science",
              dept: "6 dept",
              image: 'images/applied.jpeg',
              description:
                  "The School of Applied Science offers a multidisciplinary education that bridges theoretical knowledge and practical application. Key departments include Physics, which explores the fundamental principles governing the natural world; Chemistry, focusing on chemical reactions and material properties; and Mathematics.",
              onpress: () {
                Navigator.pushNamed(context, Applied.id);
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
