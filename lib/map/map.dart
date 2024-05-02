import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});
  @override
  State<MapSample> createState() => MapSampleState();
}
var DateFormat;

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.434883, 29.792829),
    zoom: 14,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 14);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
          body:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 270,
                  child:  GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
                SizedBox(height: 7,),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Color(0xFFb0e7b0)),
                  onPressed: _goToTheLake,
                  child: Text("Egypt",style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(height: 7,),
                TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                            labelText:"رقم الشقة",
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                SizedBox(height: 7,),
                TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                            labelText:"رقم المنطقة",
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            )
                        ),
                      ),
                SizedBox(height: 7,),
                TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      labelText:"علامة تجارية",
                      border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                ),
                SizedBox(height: 7,),
                ElevatedButton(onPressed: (){}, child: Text("confirm"),
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFb0e7b0)),
                ),

              ]),
        
          ),
            ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}