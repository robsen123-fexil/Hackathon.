// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_print

import 'package:astu/screens/gpa.dart';
import 'package:astu/screens/home.dart';
import 'package:astu/screens/mealplan.dart';
import 'package:astu/screens/schoollist.dart';
import 'package:flutter/material.dart';
import 'package:astu/constants/constant.dart';
import 'package:astu/component/Roundedbutton.dart';
import 'package:astu/screens/rulespage.dart';
import 'package:astu/screens/discover.dart';
import 'package:astu/screens/cgpa.dart';
import 'package:astu/screens/clubs.dart';
import 'package:astu/component/greeting.dart';
import 'package:astu/screens/searchcourse.dart';

class DiscoveryPage extends StatefulWidget {
  static String id = 'discovery';
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  TextEditingController searchController = TextEditingController();
  int _selectedindex = 0;
  void _ontapped(int index) {
    if (index == 1) {
      Navigator.pushNamed(context, Courses.id);
    } else if (index == 2) {
      Navigator.pushNamed(context, Clubs.id);
    }
  }

  String getgreeting() {
    final now = DateTime.now();
    final hour = now.hour;
    if (hour >= 5 && hour <= 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour <= 17) {
      return 'Good Afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  Widget build(BuildContext context) {
    print(getgreeting());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Text("Hello",
                        style: boldtext.copyWith(color: Colors.white)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      getgreeting(),
                      style: boldtext.copyWith(color: Colors.white),
                    ),
                    TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                          labelText: "Course's",
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 148, 148, 148)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.search),
                          filled: true,
                          fillColor: Colors.white),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore Catergories",
                      style: boldtext.copyWith(
                          fontSize: 20,
                          color: Color.fromARGB(255, 37, 73, 105)),
                    ),
                    Text(
                      "View All >",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 50, 115, 171)),
                    ),
                  ]),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.school_rounded,
                          size: 50,
                        ),
                        title: "Discover School",
                        ontap: () {
                          Navigator.pushNamed(context, SchoolList.id);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.local_dining,
                          size: 50,
                        ),
                        title: "Discover Food",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mealplan()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.rule,
                          size: 50,
                        ),
                        title: "Discover Rules",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Rulespage()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.location_searching,
                          size: 50,
                        ),
                        title: "Discover NearBy",
                        ontap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.calculate_outlined,
                          size: 50,
                        ),
                        title: "Grade Calculator",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GradeInputForm()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RoundedButton(
                        icons: Icon(
                          Icons.computer,
                          size: 50,
                        ),
                        title: "Departments",
                        ontap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Course's"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Club"),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        onTap: _ontapped,
      ),
    );
  }
}
