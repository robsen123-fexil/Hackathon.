// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Launge1 extends StatelessWidget {
  static String id = 'launge';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              // Do nothing to ensure map gestures work
            },
            child: Container(
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
          ),
          SizedBox(
            height: 30,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Launge & Amphy",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "around females library",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          Container(
            height: 200, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // optional, for rounded corners
              image: DecorationImage(
                image: AssetImage('images/laoungepath.png'),
                fit: BoxFit
                    .cover, // This ensures the image covers the entire container
              ),
            ),
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
                        image: AssetImage('images/amphy1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              // Right images
              SizedBox(
                height: 20,
              ),
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
                                image: AssetImage('images/amphy.jpg'),
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
                                image: AssetImage('images/centra3.jpg'),
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
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(8.564522983218845, 39.291745711361244);

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 16.0,
      ),
      gestureRecognizers: Set()
        ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer()))
        ..add(Factory<VerticalDragGestureRecognizer>(
            () => VerticalDragGestureRecognizer()))
        ..add(Factory<HorizontalDragGestureRecognizer>(
            () => HorizontalDragGestureRecognizer()))
        ..add(Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer())),
    );
  }
}
