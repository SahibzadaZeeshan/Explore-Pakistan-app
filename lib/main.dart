import 'package:damii/test%20screen.dart';
import 'package:damii/views/dropscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: TourismScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// Column
// (
// children: [
// Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Container(
// height: 200,
// width: double.infinity,
// child: ClipRRect(
// borderRadius:
// BorderRadius.circular(8.0),
// child: Image(
// image: AssetImage(place.image),
// fit: BoxFit.cover,
// ),
// ),
// ),
// SizedBox(height: 8),
// Text(
// place.name,
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.bold),
// ),
// Text(
// place.location,
// style: TextStyle(
// fontSize: 16,
// fontWeight: FontWeight.bold),
// ),
// Text(
// place.description,
// style: TextStyle(fontSize: 14),
// overflow: TextOverflow.ellipsis,
// maxLines: 2,
// ),
// ],
// ),
// ],
// ),
