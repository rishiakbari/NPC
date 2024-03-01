import 'dart:async';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:npc/widgets/custom_app_bar.dart';
import '../utils/colorz.dart';

class CleanerScreen extends StatefulWidget {
  const CleanerScreen({super.key});

  static const routeName = '/cleaner-screen';

  @override
  State<CleanerScreen> createState() => _CleanerScreenState();
}

class _CleanerScreenState extends State<CleanerScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition sourceLocation = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 13.5,
  );
  static const CameraPosition destination = CameraPosition(
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 14);

  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'API_KEY',
      PointLatLng(
          sourceLocation.target.latitude, sourceLocation.target.longitude),
      PointLatLng(destination.target.latitude, destination.target.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorz.screenBackground,
      appBar: const CustomAppBar(
        title: "Cleaner",
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.40,
        width: double.infinity,
        child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: sourceLocation,
            polylines: {
              Polyline(
                polylineId: const PolylineId("route"),
                points: polylineCoordinates,
                color: Colorz.main,
                width: 8,
              )
            },
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: {
              Marker(
                  markerId: const MarkerId("source"),
                  position: LatLng(sourceLocation.target.latitude,
                      sourceLocation.target.longitude)),
              Marker(
                  markerId: const MarkerId("destination"),
                  position: LatLng(destination.target.latitude,
                      destination.target.longitude)),
            }),
      ),
    );
  }
}
