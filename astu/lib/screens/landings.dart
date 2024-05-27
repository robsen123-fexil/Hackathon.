// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:astu/screens/discover.dart';
import 'package:astu/screens/feature.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatelessWidget {
  final PageController _controller = PageController();
  static String id = 'landing';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 248, 248),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  Feature(
                    image: 'images/astulanding.jpg',
                    about: "Adama Science & Technology University",
                    description:
                        "Our mission is to innovate knowledge through dynamic education, foster research and development for societal advancement, and promote sustainable solutions for global challenges at Adama Science and Technology University.",
                  ),
                  Feature(
                    image: 'images/calculator.webp',
                    about: "Calculator",
                    description:
                        'Introducing our user-friendly grade calculator app, designed to simplify academic life for students. Easily input grades for individual courses, customize grading scales, and calculate both course grades and cumulative GPA with precision. With intuitive features like weighted grading and semester-wise analysis, tracking academic progress has never been easier. Empowering students to plan ahead and stay organized, our app is the ultimate companion for academic success.',
                  ),
                  Feature(
                    image: 'images/regulation.jpg',
                    about: "Rules & Regulation",
                    description:
                        " Introducing our campus rules and regulations app, your go-to tool for navigating campus guidelines with ease. From academic conduct to campus safety protocols, access a comprehensive overview of all rules at your fingertips. Stay informed about policies on attendance, dress code, and academic integrity, ensuring compliance and fostering a respectful learning environment.",
                  ),
                  Feature(
                    image: 'images/food.jpg',
                    about: "Meal Schedule",
                    description:
                        " Introducing our Food Schedule app, your ultimate guide to campus dining options for the weekend. Discover a variety of delicious meals served throughout the weekend, from hearty breakfasts to savory dinners. With our app, you can access the weekend menu for campus cafeterias and dining halls, ensuring you never miss out on your favorite meals. ",
                  ),
                  Feature(
                    image: 'images/Phonelist.jpg',
                    about: "Phone Number's",
                    description:
                        "Introducing our Campus Contacts app, your essential resource for accessing emergency contacts and department heads with ease. Whether you need urgent assistance or simply want to connect with campus services, our app provides quick access to important phone numbers and email addresses. From emergency services to academic departments, find all the contact information you need in one convenient location.",
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5, // Number of pages in your PageView
              effect: WormEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                activeDotColor: Color.fromARGB(255, 62, 96, 219), // Changed the active dot color
                dotColor: Color.fromARGB(255, 251, 90, 90),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, DiscoveryPage.id);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(200, 50),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
