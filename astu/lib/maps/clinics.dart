// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SampleMap extends StatelessWidget {
  static String id = 'libraries';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoundedMap(),
    );
  }
}

class RoundedMap extends StatelessWidget {
  const RoundedMap({
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
              "Freshman Dorm",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ]),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/central.jpg')),
                  // Half of the height/width
                ),
              ),
            )
          ],
        ),
        Row(children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Open for 24 hour ",
                style: TextStyle(fontSize: 20),
              )),
        ]),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "bLOCK 110",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        )
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

  final LatLng _center = const LatLng(8.56109, 39.29040);

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
