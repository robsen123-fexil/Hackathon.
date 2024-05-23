// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:astu/component/roundedcourse.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});
  static String id = 'search';

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        // body: Container(
        //   padding: EdgeInsets.all(10),
        //   child: Column(
        //     children: [
        //       TextField(
        //         controller: searchController,
        //         decoration: InputDecoration(
        //             labelText: "Search",
        //             hintStyle: TextStyle(color: Color.fromARGB(255, 9, 0, 0)),
        //             border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(8.0),
        //                 borderSide: BorderSide(
        //                     // { BorderStyle.none}

        //                     )),
        //             prefixIcon: Icon(Icons.search),
        //             filled: true,
        //             fillColor: Colors.white),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Row(children: [
        //         Text("Course's",
        //             style: TextStyle(color: Colors.black, fontSize: 40)),
        //       ]),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Expanded(
        //         child: RoundedCourses(
        //           title: "Mathematics",
        //           department: "Freshman",
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column( 
              children: [ 
                TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        labelText: "Search",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 9, 0, 0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                // { BorderStyle.none}
            
                                )),
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox( 
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Course's",
                        style: TextStyle(color: Colors.black, fontSize: 40))
                    ],
                  ),
                   SizedBox(
                  height: 10,
                ),
                CourseItem(
                  onTap: (){
                
                  },
                  title: "Applied Mathematics I",
                  department: "Math1101",
                ),
                CourseItem(
                  onTap: (){
                    
                  },
                  title: "Applied Mathematic II",
                  department: "Math1102",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Applied Mathematic III",
                  department: "Math1103",
                ),
                CourseItem(
                  onTap: () {},
                  title: "General Physcis",
                  department: "Phys1101",
                ),
                CourseItem(
                  onTap: () {},
                  title: "General Cheme",
                  department: "Phys1101",
                ),
                CourseItem(
                  onTap: () {},
                  title: "C",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ), 
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                )
                ,
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                ),
                CourseItem(
                  onTap: () {},
                  title: "Chemistry",
                  department: "Freshman",
                )
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
