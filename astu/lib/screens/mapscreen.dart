// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class MapScreen extends StatefulWidget {
  static String id = 'map';
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static String id = 'map';
  GoogleMapController? _mapController;
  final List<Map<String, dynamic>> _locations = [
    {'name': 'Location 1', 'lat': 37.7749, 'lng': -122.4194},
    {'name': 'Location 2', 'lat': 34.0522, 'lng': -118.2437},
    {'name': 'Location 3', 'lat': 40.7128, 'lng': -74.0060},
  ];

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  void _goToLocation(double lat, double lng) {
    _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map with Locations'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(37.7749, -122.4194),
                zoom: 10,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: _locations.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    _goToLocation(
                      _locations[index]['lat'],
                      _locations[index]['lng'],
                    );
                  },
                  child: Text(_locations[index]['name']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
