import 'package:custom_clippers/Clippers/sin_cosine_wave_clipper.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:damii/model/models.dart';
import 'package:damii/views/credits_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'description_screen.dart';

class TourismScreen extends StatefulWidget {
  @override
  _TourismScreenState createState() => _TourismScreenState();
}

class _TourismScreenState extends State<TourismScreen> {
  String? selectedProvince;
  String? selectedCity;
  List<City>? cities;
  List<Place>? places; // To store places of selected city
  String appVersion = "";

  @override
  void initState() {
    super.initState();
    // Set default province and city
    selectedProvince = "KPK"; // Change this to your default province name
    selectedCity = "Peshawar"; // Change this to your default city name

    // Set cities based on the default province
    cities = provinces
        .firstWhere((province) => province.name == selectedProvince)
        .cities;

    // Set places based on the default city
    places = cities!.firstWhere((city) => city.name == selectedCity).places;
    _getAppVersion();
  }

  Future<void> _getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = "${packageInfo.version}";
    });
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Convert the string URL to Uri
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFCE404D), Color(0xFF4E204D)],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/applogo/logo.png"),
                            )),
                      ),
                    ],
                  )),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Get.back(result: TourismScreen); // Close the drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.credit_score_sharp),
                title: const Text('Credits'),
                onTap: () {
                  Get.to(const RefrenceScreen());
                },
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Privacy Policy'),
                onTap: () {
                  _launchURL(
                      'https://sites.google.com/d/1hL3fioWDkcrx03W0ILK7r-_FRhPvgLkO/p/1pCyhdivvfNB6cmZ-yItgODOIvEmGOmBv/edit');
                },
              ),
              const ExpansionTile(
                childrenPadding: EdgeInsets.symmetric(horizontal: 18),
                expandedAlignment: Alignment.centerLeft,
                title: const Text("Other Apps"),
                leading: Icon(Icons.apps),
                children: [
                  Text(
                    "Quote Verse",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Love Tester",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "Version $appVersion",
                style: const TextStyle(color: Colors.black87),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              ClipPath(
                clipper: SinCosineWaveClipper(
                  horizontalPosition: HorizontalPosition.RIGHT,
                  verticalPosition: VerticalPosition.BOTTOM,
                ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFCE404D), Color(0xFF4E204D)],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Explore Pakistan",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Builder(
                        builder: (BuildContext context) {
                          return IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Scaffold.of(context)
                                  .openDrawer(); // Open the drawer
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Province and City Dropdowns in a Row
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Select Province',
                          border: OutlineInputBorder(),
                        ),
                        value: selectedProvince,
                        isExpanded: true,
                        onChanged: (newValue) {
                          setState(() {
                            selectedProvince = newValue;
                            selectedCity = null; // Reset selected city
                            cities = provinces
                                .firstWhere(
                                    (province) => province.name == newValue)
                                .cities;
                            // Set the first city in the new list as default
                            selectedCity = cities!.first.name;
                          });
                        },
                        items: provinces.map((province) {
                          return DropdownMenuItem<String>(
                            value: province.name,
                            child: Text(province.name),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(width: 10), // Spacing between dropdowns
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Select City',
                          border: OutlineInputBorder(),
                        ),
                        value: selectedCity,
                        isExpanded: true,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue;
                            places = cities!
                                .firstWhere((city) => city.name == newValue)
                                .places;
                          });
                        },
                        items: cities!.map((city) {
                          return DropdownMenuItem<String>(
                            value: city.name,
                            child: Text(city.name),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Display Places in a Staggered Grid
              if (places != null && selectedCity != null)
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20,
                    children: List.generate(places!.length, (index) {
                      var place = places![index];
                      return StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: (place.height ?? 100) / 30,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DescriptionScreen(place: place),
                              ),
                            );
                          },
                          child: PhysicalModel(
                            color: Colors.grey,
                            shadowColor: Colors.grey,
                            elevation: 10,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors
                                        .grey[850] // Dark mode container color
                                    : Colors.grey[
                                        350], // Light mode container color
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        place.images[0], // Show the first image
                                        fit: BoxFit.fill,
                                        height: 120,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      place.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? Colors
                                                .white // Text color in dark mode
                                            : Colors
                                                .black, // Text color in light mode
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
