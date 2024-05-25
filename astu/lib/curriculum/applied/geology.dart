// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:astu/curriculum/expansion.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:astu/curriculum/page.dart'; // Import the RoundedPage widget

class Geologyabout extends StatelessWidget {
  final PageController _controller = PageController();
  static String id = 'geologyabout';
  Geologyabout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Geology"),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.white,
        body: Column(children: [
          Row(children: [
            Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "About",
                  style: boldtext,
                ))
          ]),
          SizedBox(
            height: 500,
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _controller,
                    children: [
                      Roundedexpansion(),
                      RoundedPage(
                          text:
                              'The Geology  program at our university is designed to equip students with the essential skills and knowledge required to design, develop, and maintain complex software systems. The program blends theoretical foundations with practical applications, ensuring that graduates are well-prepared to tackle real-world challenges in the software industry.',
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: WormEffect(
                    dotHeight: 8.0,
                    dotWidth: 8.0,
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ]));
  }
}
