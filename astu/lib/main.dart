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
import 'package:astu/course/applied2.dart';
import 'package:astu/curriculum/applied/biology.dart';
import 'package:astu/curriculum/applied/geology.dart';
import 'package:astu/curriculum/applied/pharmacy.dart';
import 'package:astu/curriculum/civil/arch.dart';
import 'package:astu/curriculum/civil/civil.dart';
import 'package:astu/curriculum/civil/water.dart';
import 'package:astu/curriculum/csec.dart';
import 'package:astu/curriculum/electronics.dart';
import 'package:astu/curriculum/mechanical/chemical.dart';
import 'package:astu/curriculum/mechanical/materail.dart';
import 'package:astu/curriculum/mechanical/mechanical.dart';
import 'package:astu/curriculum/power.dart';
import 'package:astu/curriculum/software.dart';
import 'package:astu/maps/amphy.dart';
import 'package:astu/maps/females.dart';
import 'package:astu/maps/libraris.dart';
import 'package:astu/maps/clinics.dart';
import 'package:astu/maps/dean.dart';
import 'package:astu/maps/cafe.dart';
import 'package:astu/screens/feature.dart';
import 'package:astu/screens/landings.dart';
import 'package:astu/screens/mapscreen.dart';
import 'package:astu/screens/phone.dart';
import 'package:astu/screens/place.dart';
import 'package:astu/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:astu/screens/discover.dart';
import 'package:astu/screens/home.dart';
import 'package:astu/screens/rulespage.dart';
import 'package:astu/screens/cgpa.dart';
import 'package:astu/screens/schoollist.dart';
import 'package:astu/schooldept/applied.dart';
import 'package:astu/schooldept/mechanical.dart';
import 'package:astu/schooldept/civil.dart';
import 'package:astu/schooldept/electrical.dart';
import 'package:astu/screens/gpa.dart';
import 'package:astu/screens/clubs.dart';
import 'package:astu/screens/mealplan.dart';
import 'package:astu/screens/searchcourse.dart';
import 'package:astu/course/applied.dart';
import 'package:astu/screens/database.dart';
import 'package:astu/screens/start.dart';
import 'package:astu/screens/user_list_screen.dart';

void main() {
  runApp(const MyAppLoader());
}

class MyAppLoader extends StatelessWidget {
  const MyAppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkDatabaseEmpty(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(child: Text('Error: ${snapshot.error}')),
            ),
          );
        } else {
          return MyApp(isDatabaseEmpty: snapshot.data!);
        }
      },
    );
  }

  Future<bool> _checkDatabaseEmpty() async {
    final DatabaseHelper databaseHelper = DatabaseHelper();
    final users = await databaseHelper.getUsers();
    return users.isEmpty;
  }
}

class MyApp extends StatelessWidget {
  final bool isDatabaseEmpty;

  // ignore: use_key_in_widget_constructors
  const MyApp({required this.isDatabaseEmpty});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: isDatabaseEmpty ? InsertScreen.id : LandingPage.id,
      routes: {
        InsertScreen.id: (context) => InsertScreen(),
        DiscoveryPage.id: (context) => DiscoveryPage(),
        Electrical.id: (context) => Electrical(),
        Civil.id: (context) => Civil(),
        Electrical.id: (context) => Electrical(),
        Mechanical.id: (context) => Mechanical(),
        SchoolList.id: (context) => SchoolList(),
        Applied.id: (context) => Applied(),
        GradeInputForm.id: (context) => GradeInputForm(),
        Cumulative.id: (context) => Cumulative(),
        Clubs.id: (context) => Clubs(),
        MealSchedule.id: (context) => MealSchedule(),
        Courses.id: (context) => Courses(),
        AppliedmathsII.id: (context) => AppliedmathsII(),
        AppliedmathsI.id: (context) => AppliedmathsI(),
        LandingPage.id: (context) => LandingPage(),
        MapScreen.id: (context) => MapScreen(),
        Phone.id: (context) => Phone(),
        Softwareabout.id: (context) => Softwareabout(),
        Cse.id: (context) => Cse(),
        Electronics.id: (context) => Electronics(),
        Power.id: (context) => Power(),
        Csec.id: (context) => Csec(),
        A2sv.id: (context) => A2sv(),
        AntiDrug.id: (context) => AntiDrug(),
        Space.id: (context) => Space(),
        Place.id: (context) => Place(),
        Schedule.id: (context) => Schedule(),
        Rulespage.id: (context) => Rulespage(),
        Mechanicalabout.id: (context) => Mechanicalabout(),
        Materialabout.id: (context) => Materialabout(),
        Chemicalabout.id: (context) => Chemicalabout(),
        Civil.id: (context) => Civil(),
        Archabout.id: (context) => Archabout(),
        Biologyabout.id: (context) => Biologyabout(),
        Pharmacy.id: (context) => Pharmacy(),
        Geologyabout.id: (context) => Geologyabout(),
        Waterabout.id: (context) => Waterabout(),
        Civilabout.id: (context) => Civilabout(),
        A2sv.id: (context) => A2sv(),
        Alx.id: (context) => Alx(),
        Eic.id: (context) => Eic(),
        Amc.id: (context) => Amc(),
        Mini.id: (context) => Mini(),
        Libraries.id: (context) => Libraries(),
        Amphy.id: (context) => Amphy(),
        Females.id: (context) => Females(),
        Cafe.id: (context) => Cafe(),
        DeanOffice.id: (context) => DeanOffice()
      },
    );
  }
}
