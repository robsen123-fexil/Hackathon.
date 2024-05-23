// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mealplan extends StatelessWidget {
  static String id = 'meal';
  const Mealplan({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> weeklyMeals = [
      {
        "day": "Monday",
        "meals": [
          {
            "name": "Breakfast",
            "time": "6:00 AM - 8:30 AM",
            "food": "Tea & Bread"
          },
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Burger"},
          {"name": "Dinner", "time": "6:30 PM - 8:30 PM", "food": "Pizza"},
        ]
      },
      {
        "day": "Tuesday",
        "meals": [
          {"name": "Breakfast", "time": "6:00 AM - 8:30 AM", "food": "Oatmeal"},
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Sandwich"},
          {"name": "Dinner", "time": "6:30 PM - 8:30 PM", "food": "Spaghetti"},
        ]
      },
      {
        "day": "Wednesday",
        "meals": [
          {
            "name": "Breakfast",
            "time": "6:00 AM - 8:30 AM",
            "food": "Pancakes"
          },
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Salad"},
          {
            "name": "Dinner",
            "time": "6:30 PM - 8:30 PM",
            "food": "Grilled Chicken"
          },
        ]
      },
      {
        "day": "Thursday",
        "meals": [
          {"name": "Breakfast", "time": "6:00 AM - 8:30 AM", "food": "Bagels"},
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Soup"},
          {"name": "Dinner", "time": "6:30 PM - 8:30 PM", "food": "Steak"},
        ]
      },
      {
        "day": "Friday",
        "meals": [
          {
            "name": "Breakfast",
            "time": "6:00 AM - 8:30 AM",
            "food": "Smoothie"
          },
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Pizza"},
          {
            "name": "Dinner",
            "time": "6:30 PM - 8:30 PM",
            "food": "Fish & Chips"
          },
        ]
      },
      {
        "day": "Saturday",
        "meals": [
          {"name": "Breakfast", "time": "6:00 AM - 8:30 AM", "food": "Waffles"},
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Burrito"},
          {"name": "Dinner", "time": "6:30 PM - 8:30 PM", "food": "BBQ Ribs"},
        ]
      },
      {
        "day": "Sunday",
        "meals": [
          {
            "name": "Breakfast",
            "time": "6:00 AM - 8:30 AM",
            "food": "French Toast"
          },
          {"name": "Lunch", "time": "11:00 AM - 1:30 PM", "food": "Tacos"},
          {"name": "Dinner", "time": "6:30 PM - 8:30 PM", "food": "Roast Beef"},
        ]
      },
    ];

    List<Widget> containers = weeklyMeals.map((day) {
      return Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day["day"],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              for (var meal in day["meals"])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      Text(
                        meal["name"],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        meal["time"],
                        style: TextStyle(color: Colors.white70, fontSize: 18.0),
                      ),
                      SizedBox(height: 8),
                      Text(
                        meal["food"],
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Plan'),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Meal Schedule",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 20),
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
                autoPlay: false,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


