import 'package:carousel_slider/carousel_slider.dart';
import 'package:damii/model/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DescriptionScreen extends StatefulWidget {
  final Place place;

  const DescriptionScreen({super.key, required this.place});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 33,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.black87 // Set color for dark mode
                          : Colors.black, // Set color for light mode),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Carousel Slider for images
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayInterval: const Duration(seconds: 2),
                  ),
                  items: widget.place.images.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              image,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                const SizedBox(height: 20),
                Text(
                  widget.place.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey[850] // Dark mode container color
                            : Colors.grey[350], // Light mode container color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "History",
                              style: TextStyle(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white // Set color for dark mode
                                    : Colors.black, // Set color for light mode
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              widget.place.description,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white // Set color for dark mode
                                    : Colors
                                        .black, // Set color for light mode),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  "Location",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors
                                            .white // Set color for dark mode
                                        : Colors
                                            .black, // Set color for light mode   ),
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white // Set color for dark mode
                                      : Colors
                                          .black, // Set color for light mode
                                ),
                              ],
                            ),
                            Text(
                              widget.place.location,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white // Set color for dark mode
                                    : Colors
                                        .black, // Set color for light mode),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Google Map Container
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 200, // Set the height for the map

                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                          widget.place.latitude!, widget.place.longitude!),
                      zoom: 14,
                    ),
                    markers: {
                      Marker(
                        markerId: const MarkerId('placeMarker'),
                        position: LatLng(
                            widget.place.latitude!, widget.place.longitude!),
                        infoWindow: InfoWindow(
                          title: widget.place.name,
                        ),
                      ),
                    },
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
