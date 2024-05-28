// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_collection_literals

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CafeBuilding1 extends StatelessWidget {
  static String id = 'cafebuilding';

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
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),

            // Mediaquery.of(context) is useful for scrren based
            width: MediaQuery.of(context)
                .size
                .width, // Set container width to screen width of full screen
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
                "Cafe",
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
                  "BLOCK 613",
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
                image: AssetImage('images/cafepath.png'),
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
                        image: AssetImage('images/cafebuilding.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
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
  // googleMapController is the one we used to keeptrack of what is happenning.in GOOGLEMAP.
  late GoogleMapController mapController;
  // THE _CENTER IS FIXED POINT IN THE MAP
  final LatLng _center = const LatLng(8.564522983218845, 39.291745711361244);

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  // @OVERIDE IS FOR REPLACING THE STATE BLUEPRINT STATEFULL WITH OUR VERSION OF STATE
  @override
  void dispose() {
    mapController.dispose();
    //SUPER.DISPOSE() IS USED TO ENSURE THAT CLEANUP EVERYTHING SUCCESSFULL
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // WIDGET BUILD(BUILDCONTEXT..) THIS PART IS USEFULL CREATES VISUALPART OF WIDGET.
    // THE wIDGET IS GOOGLEMAP WIDGET
    return GoogleMap(
      onMapCreated: _onMapCreated,
      // IN HERE INITIALCAMERAPOSITION IS USEFULL FOR INITIAL POSITION AND ZOOM LEVEL
      initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 16.0, // THIS PART IS CLOSE TOO MUCH
      ),
      // THIS BELOW INDACTES THAT DIFFERNT KINDS OF GESTURE DETECTION LIKE VERTICAL DRAG , HORIZONTAL DRAG
      gestureRecognizers: Set()
       // GESTURERECOGRNIZER IS USEFULL TO DETECT FOR WHICH OPERTION WE HAVE TO PERFOME.
        // SET HOLDS DIFFERNT TYPES OF GESTURE
        // . . .  IS CALLED CASCADE OPERATOR ALLOWS US TO PERFORM DIFFERENT TO PERFOMR DEFFENRT OPERATION ON SAME OBJECT
        ..add(Factory<PanGestureRecognizer>(() => PanGestureRecognizer()))
        // PAN IS RECOGNIZING WITH SINGLE FINGER
        ..add(Factory<VerticalDragGestureRecognizer>(
          // THIS VERTICAL DRAGING GESTURE RECOGNITION
            () => VerticalDragGestureRecognizer()))
        ..add(Factory<HorizontalDragGestureRecognizer>(
            () => HorizontalDragGestureRecognizer()))
            // THIS ONE IS USEFULL FOR RECONIZO
        ..add(Factory<ScaleGestureRecognizer>(() => ScaleGestureRecognizer())),
    );
  }
}
