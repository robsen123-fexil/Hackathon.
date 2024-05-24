// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:astu/curriculum/page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MealSchedule extends StatelessWidget {
  static String id = 'meal';

  final PageController _controller = PageController();
  MealSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255), // Changed the app bar color
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Weekend Meals Schedule",
                    style: boldtext.copyWith(
                        color: const Color.fromARGB(255, 0, 0, 0)), // Changed the text color
                  ),
                )
              ],
            ),
            SizedBox(
              height: 500,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: _controller,
                      children: [
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Monday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Kek",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Tuesday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "Kek",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Wednesday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Thursday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Friday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Saturday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                        Weakend(
                          breakfast: "Tea & Bread",
                          day: "Sunday",
                          dinner: "Misir",
                          dinner1: "shiro",
                          dinner2: "shiro",
                          lunch1: "Shiro",
                          lunch2: "Kek",
                          lunch: "misir",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 7,
                    effect: WormEffect(
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                      activeDotColor:
                          Colors.teal, // Changed the active dot color
                      dotColor: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Weakend extends StatelessWidget {
  String day;
  String breakfast;
  String lunch;
  String lunch1;
  String lunch2;
  String dinner;
  String dinner1;
  String dinner2;

  Weakend({
    super.key,
    required this.breakfast,
    required this.day,
    required this.dinner,
    required this.dinner1,
    required this.dinner2,
    required this.lunch,
    required this.lunch1,
    required this.lunch2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Container(
          height: 400,
          color:
              Colors.teal[50], // Changed the background color of the container
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    day,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0), // Changed the text color
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Breakfast.  open at 12:30am - 2:30pm",
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0)), // Changed the text color
                ),
                SizedBox(
                  height: 20,
                ),
                Text("- $breakfast", style: foods),
                SizedBox(
                  height: 20,
                ), // Changed the text color
                Text(
                  "Lunch.  open at 11:30pm - 1:30pm",
                  style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0)), // Changed the text color
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  " - $lunch",
                    style:foods), // Changed the text color
                Text(
                  " - $lunch1",
                    style: foods), // Changed the text color
                Text(
                  "- $lunch2", style: foods),
                SizedBox(
                  height: 20,
                ), // Changed the text color
                Text("Dinner.  open at 4:30am - 6:30pm",style: 
                  TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0)) // Changed the text color
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "- $dinner",
                    style:foods), // Changed the text color
                Text(
                 "- $dinner1",
                    style: foods), // Changed the text color
                Text(
                  "- $dinner2",
                    style: foods), // Changed the text color
              ],
            ),
          ),
        ),
      ),
    );
  }
}
