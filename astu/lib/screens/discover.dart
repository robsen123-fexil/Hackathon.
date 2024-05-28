// ignore_for_file: prefer_const_constructors, prefer_final_fields, avoid_print


import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:astu/screens/calendar.dart';
import 'package:astu/screens/gpa.dart';
import 'package:astu/screens/home.dart';
import 'package:astu/screens/mapscreen.dart';
import 'package:astu/screens/mealplan.dart';
import 'package:astu/screens/phone.dart';
import 'package:astu/screens/place.dart';
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
import 'package:astu/screens/sidebar.dart';
import 'package:astu/screens/database.dart';

class DiscoveryPage extends StatefulWidget {
  static String id = 'discovery';
  const DiscoveryPage({super.key});

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  final DatabaseHelper _database = DatabaseHelper();
  String? _name;
  String? _email;
  int _selectedindex = 0;
   late final AnimationController controller; // Changed to late final
  Animation? animation;
  @override
  void initState() {
    super.initState();
    _fetchUserData();
     controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,

    );
     controller
        .forward(); // Changed from controller?.forward() to controller.forward()
    controller.addListener(() {
      setState(() {});
    });
  }
  void _fetchUserData() async {
    final userData = await _database.getSingleUser();
    if (userData != null) {
      setState(() {
        _name = userData['name'];
        _email = userData['email'];
      });
    }
  }
   @override
     void dispose() {
    // Added dispose method to clean up the controller
    controller.dispose();
    super.dispose();
  }
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
    } else if (hour >= 17 && hour < 24) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }


  @override
  Widget build(BuildContext context) {
    print(getgreeting());
    return Scaffold(
      drawer: Sidebar(),
      backgroundColor: 
              const Color.fromARGB(255, 255, 255, 255), 
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
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(
                        builder: (context)=>
                         IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(Icons.menu) ,iconSize: 30,color: Colors.white,),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                     
                      Row(
                        children:[ AnimatedTextKit(
                                            animatedTexts: [
                        TypewriterAnimatedText(
                          "Welcome ",
                          textStyle: TextStyle(
                            fontSize: 35.0,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w900,
                          ),
                          speed: Duration(milliseconds: 100),
                        )
                                            ],
                                            totalRepeatCount: 1,
                                          ),
                                          Text(" $_name",
                            style: boldtext.copyWith(color: Colors.white)),
                    ]),
                   
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        getgreeting(),
                        style: boldtext.copyWith(color: Colors.white),
                      ),
                      
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore Catergories",
                      style: boldtext.copyWith(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    
                  ]),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RoundedButton(
                        icon: Center(
                          child: Icon(
                            Icons.school_rounded,
                            size: 50,
                          ),
                        ),
                        title: "Curriculum",
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
                        icon: Center(
                          child: Icon(
                            Icons.local_dining,
                            size: 50,
                          ),
                        ),
                        title: "Discover Food",
                        ontap: () {
                          Navigator.pushNamed(context, MealSchedule.id);
                        },
                      ),
                    ),
                    Expanded(
                      child: RoundedButton(
                        icon: Center(
                          child: Icon(
                            Icons.calculate_outlined,
                            size: 50,
                          ),
                        ),
                        title: "Calculator",
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GradeInputForm()));
                        },
                      ),
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
                        icon: Center(
                          child: Icon(
                            Icons.rule,
                            size: 50,
                          ),
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
                        icon: Center(
                          child: Icon(
                            Icons.calendar_today,
                            size: 50,
                          ),
                        ),
                        title: "Calendar",
                        ontap: () {
                          Navigator.pushNamed(context, Calendar.id);
                        },
                      ),
                    ),
                    Expanded(
                      child: RoundedButton(
                        icon: Center(
                          child: Icon(
                            Icons.phone,
                            size: 50,
                          ),
                        ),
                        title: "Phone Number",
                        ontap: () {
                          Navigator.pushNamed(context, Phone.id);
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
                        icon: Center(
                          child: Icon(
                            Icons.location_pin,
                            size: 50,
                          ),
                        ),
                        title: "Place",
                        ontap: () {
                          Navigator.pushNamed(
                              context,
                              Place.id);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RoundedButton(
                        icon: Center(
                          child: Icon(
                            Icons.people_outlined,
                            size: 50,
                          ),
                        ),
                        title: "Clubs",
                        ontap: () {
                         Navigator.pushNamed(context, Clubs.id);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RoundedButton(
                        icon: Center(
                          child: Icon(
                            Icons.book,
                            size: 50,
                          ),
                        ),
                        title: "Course",
                        ontap: () {
                          Navigator.pushNamed(
                              context, Courses.id);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    
                  ],
                ),
                SizedBox(
                  height: 30,
                )
                
                
               
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}
