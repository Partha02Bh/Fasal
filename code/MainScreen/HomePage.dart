import 'dart:ui';

import 'package:fasalaveer/Auth/logout.dart';
import 'package:fasalaveer/MainScreen/camera.dart';
import 'package:fasalaveer/MainScreen/comingsoon.dart';
import 'package:fasalaveer/MainScreen/guide.dart';
import 'package:fasalaveer/MainScreen/res1.dart';
import 'package:fasalaveer/MainScreen/settings.dart';
import 'package:fasalaveer/MainScreen/soiltest.dart';
import 'package:fasalaveer/Weather/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:fasalaveer/MainScreen/profilepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [
        //       Color(0xFFD2F8CB),
        //       Color(0xFFECF5F6),
        //     ],
        //   ),
        // ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.search, color: Colors.black),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.notifications),
                          color: Color(0xFFD2F8CB),
                          iconSize: 20,
                          onPressed: () {
                            LogoutPage();
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.settings),
                          color: Color(0xFFD2F8CB),
                          iconSize: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsPage()),
                            );
                          },
                        ),
                      ),
                    )

                    // Container(
                    //   height: 35,
                    //   width: 35,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFF132909),
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   child: IconButton(
                    //     icon: Icon(Icons.settings),
                    //     color: Colors.grey,
                    //     onPressed: () {
                    //       LogoutPage();
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            WeatherScreen(), // Your Weather Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey, // Add grey border color
                          width: 0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 0,
                            sigmaY: 0,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text(
                                  '20°C',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Icon(
                                  Icons.cloud,
                                  size: 64,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'Clouds',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 8, left: 18),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          width: 0,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wheat',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '1578/Q',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 12,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 8, left: 18),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50, // Square dimension
                          width: 70, // Same as height for square shape
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Potato',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '1698/Q',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_down,
                                    color: Colors.green,
                                    size: 12,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 8, left: 18),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50, // Square dimension
                          width: 70, // Same as height for square shape
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rice',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '1298/Q',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 12,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: 8, left: 18),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 50,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Onion',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text(
                                    '1878/Q',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_down,
                                    color: Colors.green,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // Existing widgets before the wheat boxes
                    // ...

                    SizedBox(height: 10),

                    // New content section starts here
                    Text(
                      "Features",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF132909),
                      ),
                    ),
                    SizedBox(height: 8), // Space between text and line
                    Container(
                      width: 130, // Width of the line
                      height: 2, // Thickness of the line
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFDDE5D4).withOpacity(0.0), // Faded start
                            Color(0xFF2D3E17), // Dark green end
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    _buildFeatureCard(
                      context,
                      "Get you Customized Plant Guide",
                      "Tailored to Your Soil, Perfect for Your Crop: Get Personalized Guidance for Every Harvest!",
                      "assets/images/first.png",
                      () {
                        // Navigate to the specific page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PlantationGuideScreen(), // Your new page
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 14),
                    _buildFeatureCard(
                      context,
                      "Resource Management",
                      "Equip Your Farm, Empower Your Day: Affordable Tools and Labor at Your Fingertips!",
                      "assets/images/second2.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                              EquipmentPage(), // Your new page
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 14),
                    _buildFeatureCard(
                      context,
                      "Scan Your Crop",
                      "Scan, Detect, Protect: Instantly Identify Plant Diseases and Safeguard Your Crops!",
                      "assets/images/third.png",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CaptureImagePage(), // Your new page
                          ),
                        );
                      },
                    ),
                    // New content section ends here

                    SizedBox(height: 40),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF132909),
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            HomePage(), // Your Home Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            // WalletPage(), // Your Wallet Page
                            ComingSoonScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ComingSoonScreen(), // Your Store Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFDFFC6)),
                      color: Color(0xFF132909),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.storefront,
                      color: Color(0xFFFDFFC6),
                      size: 35,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.pie_chart,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SoilTest(), // Your Favorite Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ProfilePage(), // Your Profile Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(
    BuildContext context,
    String title,
    String description,
    String imagePath,
    VoidCallback onTap, // Added onTap parameter
  ) {
    return GestureDetector(
      // Make the card tappable
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 10, left: 1, right: 10),
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 65,
                  height: 65,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 1, // Width of the line
                  height: 100, // Thickness of the line
                  color: Colors.grey.withOpacity(0.2),
                  // decoration: BoxDecoration(
                  //   gradient: LinearGradient(
                  //     colors: [
                  //       Color(0xFFDDE5D4).withOpacity(0.0), // Faded start
                  //       Color(0xFF2D3E17), // Dark green end
                  //     ],
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //   ),
                  // ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF132909),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

