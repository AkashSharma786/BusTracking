import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  // Constructor for HomeScreen
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Completer to handle GoogleMapController
  final Completer<GoogleMapController> _controller = Completer();

  // Initial camera position for Google Map
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(
      22.556304,
      88.414604,
    ),
    zoom: 14.87, // Initial zoom level
  );

  // List of markers to be displayed on the map
  final List<Marker> _marker = [];

  // List of predefined markers
  final List<Marker> _list = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(22.556304, 88.414604),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(22.570937, 88.418095),
        infoWindow: InfoWindow(title: "My Destination"))
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the list of markers with predefined markers
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold is the basic structure of a Flutter screen
      body: SafeArea(
        child: GoogleMap(
          // GoogleMap is a widget to display Google Maps
          initialCameraPosition: _kGooglePlex,
          markers: Set.of(_marker),
          // Set initial markers for the map
          mapType: MapType.hybrid,
          // Set which type of map you want to implement
          myLocationButtonEnabled: true,
          compassEnabled: true,

          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            // This callback gets triggered when the map is created.
            // It completes the Completer with the created GoogleMapController.
            // This allows us to interact with the map later in the code.
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Floating action button for a specific action (in this case, location)
        child: const Icon(Icons.location_disabled_outlined),
        onPressed: () async {
          GoogleMapController controller = await _controller.future;
          // Get the GoogleMapController from the Completer

          controller.animateCamera(CameraUpdate.newCameraPosition(
              const CameraPosition(
                  target: LatLng(22.570937, 88.418095), zoom: 14)));
          // Animate the camera to a new position (My Destination) with a specific zoom level

          setState(() {}); // Trigger a rebuild of the widget
        },
      ),
    );
  }
}
