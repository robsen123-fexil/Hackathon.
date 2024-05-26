// ignore_for_file: prefer_const_constructors

import 'package:astu/clubs/Roundedclub.dart';
import 'package:astu/clubs/a2sv.dart';
import 'package:astu/clubs/alx_community.dart';
import 'package:astu/clubs/amc.dart';
import 'package:astu/clubs/antidrug.dart';
import 'package:astu/clubs/csec.dart';
import 'package:astu/clubs/eicclub.dart';
import 'package:astu/clubs/minimedia.dart';
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
                    "Our mission is to educate, support, and empower students to make healthy choices and resist peer pressure related to drug use. Through informative workshops, engaging activities, guest speakers, and outreach programs, the Anti-Drug Club aims to foster a safe and supportive environment for all students.",
                image: "images/antidrug.jpeg",
                onpress: () {
                  Navigator.pushNamed(context, AntiDrug.id);
                },
              ),
              Roundedclub(
                title: "A2SV",
                description:
                    "This club serves as a platform for ambitious and driven individuals who seek to immerse themselves in the vibrant ecosystem of Silicon Valley, where groundbreaking startups, established tech giants, and visionary entrepreneurs converge.Through networking events, workshops, guest speakers, and mentorship programs, A2SV provides its members with valuable insights, resources, and connections to navigate the Silicon Valley landscape effectively. ",
                image: "images/a2sv.jpg",
                onpress: () {
                  Navigator.pushNamed(context, A2sv.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Alx Community",
                description:
                    "As part of the ALX program, students are connected with a diverse community of peers who share a common commitment to personal and professional development. Whether you're embarking on your ALX journey or already immersed in the program, ALX Community provides a valuable platform to connect with like-minded individuals, exchange ideas, and collaborate on projects that drive positive change.",
                image: "images/alx.jpg",
                onpress: () {
                  Navigator.pushNamed(context, Alx.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "EIC ASTU",
                description:
                    "The Space Science Club is a dynamic group dedicated to exploring and understanding the vast universe beyond our planet. Our club offers members the opportunity to delve into various aspects of space science, including astronomy, astrophysics, and cosmology",
                image: "images/enterprenure.jpg",
                onpress: () {
                  Navigator.pushNamed(context, Eic.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
             
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "AMC",
                description:
                    "AMC aims to enhance the educational experience by providing hands-on learning opportunities, fostering innovation, and facilitating professional growth. Through a variety of activities including workshops, guest lectures, industrial visits, and collaborative projects, the club offers members practical insights into the field of mechanical engineering.",
                image: "images/mechanicalclub.jpg",
                onpress: () {
                  Navigator.pushNamed(context, Amc.id);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Roundedclub(
                title: "Astu Mini Media",
                description:
                    "Our club is dedicated to exploring the diverse and dynamic world of short-form media, including short films, animations, web series, podcasts, and social media content. We believe that great stories can be told in any format, and our goal is to celebrate and amplify the voices of emerging creators who specialize in compact, impactful storytelling.",
                image: "images/mini.jpg",
                onpress: () {
                  Navigator.pushNamed(context, Mini.id);
                },
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
