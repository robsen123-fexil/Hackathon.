// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Libraries extends StatelessWidget {
  static String id = 'Libraries';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Roundedmap(
        name: "Central Library",
        block: 'Block 101',
        image1: 'images/central.jpg',
         image2: 'images/central.jpg',
          image3: 'images/central.jpg',

      ),
    );
  }
}

class Roundedmap extends StatelessWidget {
  String name;
  String block;
  String image1;
  String image2;
  String image3;

  Roundedmap({
    required this.image1,
    required this.image2,
    required this.image3,
    required this.name,
    required this.block,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          width: MediaQuery.of(context)
              .size
              .width, // Set container width to screen width
          height: MediaQuery.of(context).size.height *
              0.5, // Set container height to half of screen height
          child: MapSample(),
        ),
        SizedBox(
          height: 30,
        ),
        Row(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 40, 
              ),
            ),
          )
        ]),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.all(10), child: Icon(Icons.location_pin)),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                block,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        Row(
          children: [
            // Left image
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 400, // Adjust the height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // Right images
            Expanded(
              child: SizedBox(
                height: 400, // Match the height of the left image
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image2),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image3),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(8.5617831, 39.2814174);

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 16.0,
      ),
    );
  }
}
