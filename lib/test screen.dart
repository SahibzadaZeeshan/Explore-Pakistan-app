//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart'; // Import Google Maps
// import 'package:damii/model/models.dart';
//
// class DescriptionScreen extends StatefulWidget {
//   final Place place;
//
//   const DescriptionScreen({super.key, required this.place});
//
//   @override
//   State<DescriptionScreen> createState() => _DescriptionScreenState();
// }
//
// class _DescriptionScreenState extends State<DescriptionScreen> {
//   late GoogleMapController mapController;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Container(
//                     height: 33,
//                     width: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.grey[300],
//                     ),
//                     child: const Icon(Icons.arrow_back),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(///is continer k jaga muji slider show kardein
//                   height: 294,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(widget.place.image),
//                       fit: BoxFit.cover,
//                     ),
//                     color: Colors.grey[300],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//
//                 const SizedBox(height: 20),
//                 Text(
//                   widget.place.name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Wrap(
//                   runSpacing: 10,
//                   spacing: 10,
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.grey[300],
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               "Description",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Text(
//                               widget.place.description,
//                               style:
//                                   const TextStyle(fontWeight: FontWeight.w500),
//                             ),
//                             const SizedBox(height: 20),
//                             Row(
//                               children: [
//                                 const Text(
//                                   "Location",
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 30,
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 const Icon(
//                                   Icons.location_on_outlined,
//                                   size: 40,
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               widget.place.location,
//                               style:
//                                   const TextStyle(fontWeight: FontWeight.w500),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//
//                 // Google Map Container
//                 Container(
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                   height: 200, // Set the height for the map
//
//                   child: GoogleMap(
//                     initialCameraPosition: CameraPosition(
//                       target: LatLng(
//                           widget.place.latitude!,
//                           widget.place.longitude!),
//                       zoom: 14,
//                     ),
//                     markers: {
//                       Marker(
//                         markerId: const MarkerId('placeMarker'),
//                         position: LatLng(
//                             widget.place.latitude!,
//                             widget.place.longitude!),
//                         infoWindow: InfoWindow(
//                           title: widget.place.name,
//                         ),
//                       ),
//                     },
//                     onMapCreated: (GoogleMapController controller) {
//                       mapController = controller;
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//////////////////
// import 'package:custom_clippers/Clippers/sin_cosine_wave_clipper.dart';
// import 'package:custom_clippers/custom_clippers.dart';
// import 'package:damii/model/models.dart';
// import 'package:damii/views/description_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TourismScreen extends StatefulWidget {
//   @override
//   _TourismScreenState createState() => _TourismScreenState();
// }
//
// class _TourismScreenState extends State<TourismScreen> {
//   String? selectedProvince;
//   String? selectedCity;
//   List<City>? cities;
//   List<Place>? places; // To store places of selected city
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               ClipPath(
//                 clipper: SinCosineWaveClipper(
//                   horizontalPosition: HorizontalPosition.RIGHT,
//                   verticalPosition: VerticalPosition.BOTTOM,
//                 ),
//                 child: Container(
//                   height: 120,
//                   width: double.infinity,
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Color(0xFFCE404D), Color(0xFF4E204D)],
//                     ),
//                   ),
//                   child: Text(
//                     "Explore Pakistan",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.only(right: 8, bottom: 8.0, left: 8),
//                 child: Container(
//                   height: 100,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [Color(0xFFCE404D), Color(0xFF4E204D)],
//                       ),
//                       borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(20),
//                           topLeft: Radius.circular(20)),
//                       color: Colors.red),
//                 ),
//               ),
//               // Province Dropdown
//               SizedBox(height: 10,),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     DropdownButtonFormField<String>(
//                       decoration: InputDecoration(
//                         labelText: 'Select Province',
//                         border: OutlineInputBorder(),
//                       ),
//                       value: selectedProvince,
//                       isExpanded: true,
//                       onChanged: (newValue) {
//                         setState(() {
//                           selectedProvince = newValue;
//                           selectedCity = null;
//                           cities = provinces
//                               .firstWhere(
//                                   (province) => province.name == newValue)
//                               .cities;
//                         });
//                       },
//                       items: provinces.map((province) {
//                         return DropdownMenuItem<String>(
//                           value: province.name,
//                           child: Text(province.name),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(height: 10),
//
//               // City Dropdown
//               if (cities != null)
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: DropdownButtonFormField<String>(
//                     decoration: InputDecoration(
//                       labelText: 'Select City',
//                       border: OutlineInputBorder(),
//                     ),
//                     value: selectedCity,
//                     isExpanded: true,
//                     onChanged: (newValue) {
//                       setState(() {
//                         selectedCity = newValue;
//                         // Fetch places from selected city
//                         places = cities!
//                             .firstWhere((city) => city.name == newValue)
//                             .places;
//                       });
//                     },
//                     items: cities!.map((city) {
//                       return DropdownMenuItem<String>(
//                         value: city.name,
//                         child: Text(city.name),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//
//               SizedBox(height: 20),
//
//               // Display Places in a Staggered Grid
//               if (places != null && selectedCity != null)
//                 Padding(
//                   padding: const EdgeInsets.all(18.0),
//                   child: StaggeredGrid.count(
//                     crossAxisCount: 2, // 2 items per row
//                     mainAxisSpacing: 15,
//                     crossAxisSpacing: 20,
//                     children: List.generate(places!.length, (index) {
//                       var place = places![index];
//                       return StaggeredGridTile.count(
//                         crossAxisCellCount: 1,
//                         mainAxisCellCount: (place.height ?? 100) / 30,
//                         // Use height from Place model
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => DescriptionScreen(
//                                   place: place,
//                                 ),
//                               ),
//                             );
//                           },
//                           child: Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Colors.black),
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.grey[300],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(20),
//                                     child: Image(
//                                       image: AssetImage(
//                                         place.images[0],
//                                       ),
//                                       fit: BoxFit.cover,
//                                       height: 120,
//                                       // You can also vary this height
//                                       width: double.infinity,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 8),
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         place.name,
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//
//                                       // Text(
//                                       //   place.location,
//                                       //   style: TextStyle(
//                                       //     fontSize: 16,
//                                       //     fontWeight: FontWeight.bold,
//                                       //   ),
//                                       // ),
//                                       // Text(
//                                       //   place.description,
//                                       //   style: TextStyle(fontSize: 14),
//                                       //   overflow: TextOverflow.ellipsis,
//                                       //   maxLines: 2,
//                                       // ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
///////////////
// class Province {
//   final String name;
//   final List<City> cities;
//
//   Province({required this.name, required this.cities});
// }
//
// class City {
//   final String name;
//   final List<Place> places;
//
//   City({required this.name, required this.places});
// }

// class Place {
//   final String name; // New field for place name
//   final String image;
//
//   // final String image1;
//   // final String image2;
//   final String description;
//   final String location;
//   final double? height;
//   final double? longitude;
//   final double? latitude;
//
//   Place({
//     required this.name,
//     // required this.image1,
//     // required this.image2,
//     required this.image,
//     required this.description,
//     required this.location,
//     required this.height,
//     required this.latitude,
//     required this.longitude,
//   });
// }
// Sample Data
// List<Province> provinces = [
//   Province(
//     name: 'Khyber PakhtoonKhwa',
//     cities: [
//       City(
//         name: 'Peshawar',
//         places: [
//           Place(
//             // image1:,
//             // image2:,
//             name: 'Islamia College Peshawar',
//             height: 55,
//             image: 'assets/peshawar/Img1.png',
//             location:
//                 'Grand Trunk Rd, Rahat Abad, Peshawar, Khyber Pakhtunkhwa',
//             description:
//                 'History. Founded by Sir S.A. Qayyum and Sir George Roos-Keppel in 1913,'
//                 ' it is one of the oldest institutions of higher education in Pakistan,'
//                 ' and its historical roots are traced from the culminating point of the Aligarh Movement.',
//             longitude: 71.5249,
//             // Corrected longitude
//             latitude: 34.0081, // Corrected latitude
//           ),
//           Place(
//             // image1:,
//             // image2:,
//             name: 'Peshawar Museum ',
//             height: 55,
//             image: 'assets/peshawar/musem1.png',
//             location:
//                 'Saddar Road opposite Governor House Peshawar & Civil Secretariat, '
//                     'Finance Department, Civil Secretariat, Peshawar, Khyber Pakhtunkhwa',
//             description:
//                 'Established in the Grand Victoria Memorial Hall in 1906,'
//                     ' the Peshawar Museum is famous the world over for housing a unique '
//                     '& rare collection of Gandhara Sculptures, coins, epigraphs & other antiquities recovered from the excavation  '
//                     'of ancient sites located in the Peshawar Valley, a region known as Gandhara in the past.',
//             longitude: 71.5249,
//             // Corrected longitude
//             latitude: 34.0078, // Corrected latitude
//           ),
//         ],
//       ),
//     ],
//   ),
// ];

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AttributionScreen extends StatelessWidget {
  // Method to open URLs in the browser
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Attributions",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  " Images used\nin this app",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/book',
                image: 'assets/peshawar/Img1.png',
                text: 'Book icons created by Freepik - Flaticon',
                scale: 2,
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/quran',
                image: 'assets/Hafiz.png',
                scale: 2,
                text: 'Quran icons created by Prosymbols \nPremium - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/sermon',
                image: 'assets/Qari.png',
                scale: 2,
                text: 'Sermon icons created by Siipkan\nCreative - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/taxi',
                image: 'assets/Car.png',
                scale: 2,
                text: 'Taxi icons created by fjstudio - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url:
                    'https://thenounproject.com/browse/icons/term/vector-hiace/',
                image: 'assets/Flying Coach.png',
                scale: 2,
                text: 'Vector hiace by Galih Eka Purnama from\nNoun Project',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/tractor',
                image: 'assets/Tractor.png',
                scale: 2,
                text: 'Tractor icons created by Freepik - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url:
                    'https://www.flaticon.com/free-icons/public-transportation',
                image: 'assets/Coaster.png',
                scale: 2,
                text:
                    'Public transportation icons created by\nSyafriStudio - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/doorstep',
                image: 'assets/Suzuki.png',
                scale: 2,
                text: 'Doorstep icons created by Franc11s\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/three-wheel',
                image: 'assets/Rikshaw.png',
                scale: 2,
                text: 'Three wheel icons created by Leremy\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/ambulance',
                image: 'assets/Ambulance.png',
                scale: 2,
                text: 'Ambulance icons created by Victoruler\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/doctor',
                image: 'assets/General Practitioner.png',
                scale: 2,
                text:
                    'Doctor icons created by Creative Stall\nPremium - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/homeopathy',
                image: 'assets/Homeopathic.png',
                scale: 2,
                text: 'Homeopathy icons created by Freepik\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/professions-and-jobs',
                image: 'assets/MBBS.png',
                scale: 2,
                text:
                    'Professions and jobs icons created by\nProsymbols Premium - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/physician',
                image: 'assets/Medical Specialist.png',
                scale: 2,
                text: 'Physician icons created by tuktukdesign\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/pediatrician',
                image: 'assets/Children Specialist.png',
                scale: 2,
                text: 'Pediatrician icons created by Leremy\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/ent',
                image: 'assets/ENT Specialist.png',
                scale: 2,
                text: 'Ent icons created by Leremy - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/specialist',
                image: 'assets/Dental Specialist.png',
                scale: 2,
                text: 'Specialist icons created by Iconjam\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/heart',
                image: 'assets/Heart Specialist.png',
                scale: 2,
                text: 'Heart icons created by Smashicons\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/neuro',
                image: 'assets/Neuro Surgeon.png',
                scale: 2,
                text: 'Neuro icons created by kliwir art - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/gynecologist',
                image: 'assets/Gynecologist.png',
                scale: 2,
                text: 'Gynecologist icons created by Vector\nStall - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/urology',
                image: 'assets/Urologist.png',
                scale: 2,
                text: 'Urology icons created by Freepik - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/ophtalmology',
                image: 'assets/Eye Specialist.png',
                scale: 2,
                text: 'Ophtalmology icons created by Dewi Sari\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/motorbike',
                image: 'assets/Bike Mechanic.png',
                scale: 2,
                text: 'Motorbike icons created by Smashicons\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/mechanic',
                image: 'assets/Car Mechanic.png',
                scale: 2,
                text: 'Mechanic icons created by Leremy\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/tractor',
                image: 'assets/Tractor Mechanic.png',
                scale: 2,
                text: 'Tractor icons created by juicy_fish\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/ecommerce',
                image: 'assets/General Store.png',
                scale: 2,
                text: 'Ecommerce icons created by Andrean\nPrabowo - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/pharmacy',
                image: 'assets/Medical Store.png',
                scale: 2,
                text: 'Pharmacy icons created by Freepik\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url:
                    'https://www.flaticon.com/free-icons/architecture-and-city',
                image: 'assets/Chicken Meat Shop.png',
                scale: 2,
                text:
                    'Architecture and city icons created by\nsmashingstocks - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/meat',
                image: 'assets/Beef Meat Shop.png',
                scale: 2,
                text: 'Meat icons created by shmai - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/tent',
                image: 'assets/tent.png',
                scale: 2,
                text: 'Tent icons created by Pixel perfect\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/crockery',
                image: 'assets/plate.png',
                scale: 2,
                text: 'Crockery icons created by Graphix\nDxinerz - Flaticon',
              ),

              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/dairy',
                image: 'assets/Milk Shop.png',
                scale: 2,
                text:
                    'Dairy icons created by Chanut-is\n-Industries - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/gift-shop',
                image: 'assets/Gift Shop.png',
                scale: 2,
                text: 'Gift-shop icons created by Muhammad\n_Usman - Flaticon',
              ),

              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/chef',
                image: 'assets/Chef.png',
                scale: 2,
                text: 'Chef icons created by Graphix Dxinerz\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/electrician',
                image: 'assets/Residential And Domestic.png',
                scale: 2,
                text: 'Electrician icons created by Freepik\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/electrician',
                image: 'assets/Automotive(Cars,Motorcycle etc).png',
                scale: 2,
                text: 'Electrician icons created by juicy_fish\n- Flaticon',
              ),

              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/solar-panel',
                image: 'assets/Solar Panel.png',
                scale: 2,
                text: 'Solar panel icons created by small.smiles\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/refrigerator',
                image: 'assets/Refrigerator.png',
                scale: 2,
                text: 'Refrigerator icons created by juicy_fish\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/washing-machine',
                image: 'assets/Washing Machine.png',
                scale: 2,
                text:
                    'Washing machine icons created by\nyoyonpujiono - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/mason',
                image: 'assets/Mistri.png',
                scale: 2,
                text: 'Mason icons created by Three\nmusketeers - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/labor',
                image: 'assets/Mazdoor.png',
                scale: 2,
                text: 'Labor icons created by Leremy - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/plumber',
                image: 'assets/Plumber.png',
                scale: 2,
                text: 'Plumber icons created by Freepik - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/layered',
                image: 'assets/Painters.png',
                scale: 2,
                text: 'Layered icons created by orvipixel\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/resource',
                image: 'assets/SocialPeople.png',
                scale: 2,
                text: 'Resource icons created by Anditii\nCreative - Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/whatsapp',
                image: 'assets/whatsapp.png',
                scale: 5,
                text: 'Whatsapp icons created by Roundicons\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.flaticon.com/free-icons/attributes',
                image: 'assets/Attributes.png',
                scale: 5,
                text: 'Attributes icons created by orvipixel\n- Flaticon',
              ),
              SizedBox(height: 10),
              buildCustomLinkWidget(
                url: 'https://www.vecteezy.com/free-vector/coming-soon',
                image: 'assets/Coming Soon.png',
                scale: 10,
                text: 'Coming Soon Vectors by Vecteezy',
              ),

              // Add more attributions below as needed...
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomLinkWidget(
      {required String url,
      required String image,
      required String text,
      required double scale}) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Row(
        children: [
          Image.asset(
            image,
            scale: scale,
          ),
          SizedBox(width: 10),
          Container(
            width: 280,
            child: Text(
              text,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
