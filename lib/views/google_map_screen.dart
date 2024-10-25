// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class GoogleMapScreen extends StatelessWidget {
//   final double? lat;
//   final double? long;
//   final String? placeName; // Add place name for display
//
//   const GoogleMapScreen({
//     Key? key,
//     this.lat,
//     this.long,
//     this.placeName,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Place Location"),
//       ),
//       body: lat != null && long != null
//           ? GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(lat!, long!),
//           zoom: 14,
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId("placeMarker"),
//             position: LatLng(lat!, long!),
//             infoWindow: InfoWindow(
//               title: placeName, // Show the place name in the info window
//               snippet: "Latitude: $lat, Longitude: $long",
//             ),
//           ),
//         },
//       )
//           : Center(
//         child: Text("Coordinates are unavailable"),
//       ),
//     );
//   }
// }
