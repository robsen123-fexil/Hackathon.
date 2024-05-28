// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_declarations, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OffcampusMenu extends StatelessWidget {
  static String id = 'offcampusmenu';
  const OffcampusMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Offcampus Menu'),
        backgroundColor: Color.fromARGB(255, 248, 251, 253),
      ),
      body: FoodPage(
        no: "+2519446254",
        name1: "Xebs Ferfer",
        name2: "Mulu Ferfer",
        name3: "Pasta Be Enkulal",
        name4: "Special",
        price1: 180,
        price2: 160,
        price3: 170,
        price44: 210,
      ),
    );
  }
}

// custom widget
class FoodPage extends StatelessWidget {
  String no;
  String name1;
  String name2;
  String name3;
  String name4;
  int price1;
  int price2;
  int price3;
  int price44;

  FoodPage({
    required this.no,
    super.key,
    required this.name1,
    required this.name2 , 
    required this.name3,
    required this.name4 ,
    required this.price1 , 
    required this.price2 , 
    required this.price3 ,
    required this.price44
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 35, 89, 134),
                          ),
                        ),
                        SizedBox(height: 20),
                        Offcampus(name1: name1, price1: price1),
                        Offcampus(name1: name2, price1: price1),
                        Offcampus(name1: name3, price1: price3),
                        Offcampus(name1: name4, price1: price44),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  if (await canLaunchUrl(Uri.parse('tel:$no'))) {
                    await launchUrl(Uri.parse('tel:$no'));
                  } else {
                    throw "Could Not call ";
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 35, 89, 134),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Order Now!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Offcampus extends StatelessWidget {
  final String name1;
  final int price1;

  const Offcampus({
    required this.name1,
    required this.price1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name1,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '\$$price1',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
