// ignore_for_file: prefer_const_constructors

import 'package:astu/component/expansionitem.dart';
import 'package:flutter/material.dart';

class Roundedexpansion extends StatelessWidget {
  const Roundedexpansion({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          child: Column(
            
            children: [
              ExpansionTile(
                title: Text("First Year:   Semister I"),
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text("No")),
                          DataColumn(label: Text("Course Name")),
                          DataColumn(label: Text("Cr-Hr")),
                          DataColumn(label: Text("Pre-req")),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("1")),
                            DataCell(Text("Applied Mathematics I")),
                            DataCell(Text("4")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("2")),
                            DataCell(Text("General Physics I")),
                            DataCell(Text("4")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("3")),
                            DataCell(Text("General Chemistry I")),
                            DataCell(Text("4")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("4")),
                            DataCell(Text("Intruduction to Computing")),
                            DataCell(Text("3")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("5")),
                            DataCell(Text("Communication English Skill")),
                            DataCell(Text("3")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("6")),
                            DataCell(Text("Introduction to Civics and Ethics")),
                            DataCell(Text("3")),
                            DataCell(Text("None"))
                          ]),
                          DataRow(cells: [
                            DataCell(Text("7")),
                            DataCell(Text("Health and Physical")),
                            DataCell(Text("0")),
                            DataCell(Text("None"))
                          ]),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("First Year : Semister II"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics II")),
                          DataCell(Text("4")),
                          DataCell(Text("Applied Mathematics I "))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("Engineering Drawing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("Fundamental Programming ")),
                          DataCell(Text("3")),
                          DataCell(Text("Introduction To Computing"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Logic and Critical Thinking ")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Health and Physical Education")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Second Year : Semister I"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics II")),
                          DataCell(Text("4")),
                          DataCell(Text("Applied Mathematics I "))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("Engineering Drawing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("Fundamental Programming ")),
                          DataCell(Text("3")),
                          DataCell(Text("Introduction To Computing"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Logic and Critical Thinking ")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Health and Physical Education")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
                            ExpansionTile(
                title: Text("Second Year : Semister II"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics II")),
                          DataCell(Text("4")),
                          DataCell(Text("Applied Mathematics I "))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("Engineering Drawing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("Fundamental Programming ")),
                          DataCell(Text("3")),
                          DataCell(Text("Introduction To Computing"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Logic and Critical Thinking ")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Health and Physical Education")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              
                            ExpansionTile(
                title: Text("Third Year : Semister I"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics II")),
                          DataCell(Text("4")),
                          DataCell(Text("Applied Mathematics I "))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("Engineering Drawing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("Fundamental Programming ")),
                          DataCell(Text("3")),
                          DataCell(Text("Introduction To Computing"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Logic and Critical Thinking ")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Health and Physical Education")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Third Year: Semister II"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("General Physics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("General Chemistry I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Communication English Skill")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Introduction to Civics and Ethics")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("7")),
                          DataCell(Text("Health and Physical")),
                          DataCell(Text("0")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Fourth Year: Semister I"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("General Physics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("General Chemistry I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Communication English Skill")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Introduction to Civics and Ethics")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("7")),
                          DataCell(Text("Health and Physical")),
                          DataCell(Text("0")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Fourth Year: Semister II"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("General Physics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("General Chemistry I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Communication English Skill")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Introduction to Civics and Ethics")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("7")),
                          DataCell(Text("Health and Physical")),
                          DataCell(Text("0")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Fifth Year: Semister I"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("General Physics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("General Chemistry I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Communication English Skill")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Introduction to Civics and Ethics")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("7")),
                          DataCell(Text("Health and Physical")),
                          DataCell(Text("0")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text("Fifth Year : Semister II"),
                children: [
                  SingleChildScrollView(
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text("No")),
                        DataColumn(label: Text("Course Name")),
                        DataColumn(label: Text("Cr-Hr")),
                        DataColumn(label: Text("Pre-req")),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Applied Mathematics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("2")),
                          DataCell(Text("General Physics I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("3")),
                          DataCell(Text("General Chemistry I")),
                          DataCell(Text("4")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("4")),
                          DataCell(Text("Intruduction to Computing")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("5")),
                          DataCell(Text("Communication English Skill")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("6")),
                          DataCell(Text("Introduction to Civics and Ethics")),
                          DataCell(Text("3")),
                          DataCell(Text("None"))
                        ]),
                        DataRow(cells: [
                          DataCell(Text("7")),
                          DataCell(Text("Health and Physical")),
                          DataCell(Text("0")),
                          DataCell(Text("None"))
                        ]),
                      ],
                    ),
                  )
                ],
              ),
              
              
            ],
          ),
        )
      ],
    );
  }
}

class Table extends StatelessWidget {
  const Table({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(columns: [
        DataColumn(label: Text("No")),
        DataColumn(label: Text("Course Name")),
        DataColumn(label: Text("Cr-hr")),
        DataColumn(label: Text("Pre-req")),
      ], rows: []),
    );
  }
}
