// ignore_for_file: prefer_const_constructors

import 'package:astu/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mealplan extends StatelessWidget {
  static String id = 'meal';
  const Mealplan({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
              'BreakFast',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            Text(
              'Lauch',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            Text(
              'Dinner',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),

            ] 
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'Slide 2',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'Slide 3',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(

        child: Column(

          children:[ 
            Row( 
             
              children: [ 
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(" Meal Schedule"  , style: boldtext,))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            CarouselSlider(
            items: containers.map((container) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: container,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: true,
              autoPlay: false, // Disable autoPlay for manual scrolling
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.8,
            ),
          ),
        ]),
      ),
    );
  }
}

