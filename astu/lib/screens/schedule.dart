// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});
  static String id = 'schedule';

  @override
  Widget build(BuildContext context) {
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
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Semister Schedule" ,style: TextStyle(fontSize: 30),),
                )
              ],
            ),
            SizedBox( 
              height: 20,
            ),
            SingleChildScrollView(
              child: DataTable(
                     columns: [
                       DataColumn(label: Text("Instructor")),
                       DataColumn(label: Text("Course Code ")),
                       DataColumn(label: Text("C.Title")),
                       DataColumn(label: Text("Day")),
                       DataColumn(label: Text("8:00-9:50")),
                       DataColumn(label: Text("12:00-7:50")),
                       DataColumn(label: Text("2:00-3:50")),
                       DataColumn(label: Text("4:00 - 5:50")),
              
                     ],
                     rows: [
                       DataRow(cells: [
                         DataCell(Text("1")),
                         DataCell(Text("Applied Mathematics I")),
                         DataCell(Text("4")),
                          DataCell(Text("None")),
                           DataCell(Text("None")),
                            DataCell(Text("None")),
                             DataCell(Text("None")),
                              DataCell(Text("None"))
                       ]),
               
               
                 
               ]
               
               ),
            )
          ],
          
        ),
      ),
    );
  }
}
