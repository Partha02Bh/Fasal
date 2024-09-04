import 'dart:ui';

import 'package:fasalaveer/Auth/logout.dart';
import 'package:fasalaveer/MainScreen/camera.dart';
import 'package:fasalaveer/MainScreen/guide.dart';
import 'package:fasalaveer/Weather/weather_screen.dart';
import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD2F8CB),
              Color(0xFFECF5F6),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          
                          children: [
                            // Icon(Icons.search, color: Colors.black),
                            // SizedBox(width: 8,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.settings),
                        color: Colors.grey,
                        onPressed: () {
                          LogoutPage();
                        },
                      ),
                    ),
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
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Rain',
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
                  //Container(
                  //   padding: EdgeInsets.all(16),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white.withOpacity(0.7),
                  //     borderRadius: BorderRadius.circular(12),
                  //   ),
                  //   height: 250, // Increase the height of the container
                  //   width: double.infinity, // Make the container full width
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(12), // Match the container's border radius
                  //     child: Image.asset(
                  //       'assets/images/wet2.jpg', // Replace with your image asset path
                  //       fit: BoxFit.cover, // Ensure the image covers the entire container
                  //       height: double.infinity, // Ensure the image fills the container height
                  //       width: double.infinity, // Ensure the image fills the container width
                  //     ),
                  //   ),
                  // ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF132909)),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wheat',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '1520/Q',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap for this container
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFF132909)),
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Potato',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '5650/Q',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.trending_up,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoxPage(title: 'Box 1'), // Replace with actual page
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFFFFFF),
                                Color.fromARGB(253, 255, 252, 198),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Box 1',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Content for Box 1',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoxPage(title: 'Box 2'), // Replace with actual page
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFFFFFF),
                                Color.fromARGB(253, 255, 252, 198),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Box 2',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Content for Box 2',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoxPage(title: 'Box 3'), // Replace with actual page
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFFFFFF),
                                Color.fromARGB(253, 255, 252, 198),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Box 3',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Content for Box 3',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BoxPage(title: 'Box 4'), // Replace with actual page
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFFFFFF),
                                Color.fromARGB(253, 255, 252, 198),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Box 4',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Content for Box 4',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFECF5F6),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
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
                    color: Colors.yellow,
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
                    Icons.account_balance_wallet,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            // WalletPage(), // Your Wallet Page
                            CaptureImagePage(),
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
                            StorePage(), // Your Store Page
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
                      border: Border.all(color: Colors.yellow),
                      color: Color(0xFF132909),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.storefront,
                      color: Colors.yellow,
                      size: 35,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FavoritePage(), // Your Favorite Page
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
                    color: Colors.yellow,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PlantationGuideScreen(), // Your Profile Page
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
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFFD2F8CB),
//               Color(0xFFECF5F6),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.symmetric(horizontal: 12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Row(
//                           children: [
//                             Icon(Icons.search, color: Colors.black),
//                             SizedBox(width: 8),
//                             Expanded(
//                               child: TextField(
//                                 decoration: InputDecoration(
//                                   hintText: 'Search',
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Color(0xFF132909),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: IconButton(
//                         icon: Icon(Icons.settings),
//                         color: Colors.grey,
//                         onPressed: () {
//                           // Handle settings button press
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             WeatherPage(), // Your Weather Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(1.0, 0.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.all(1),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.7),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     height: 250, // Increase the height of the container
//                     width: double.infinity, // Make the container full width
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(
//                           12), // Match the container's border radius
//                       child: Image.asset(
//                         'assets/images/wet2.jpg', // Replace with your image asset path
//                         fit: BoxFit
//                             .cover, // Ensure the image covers the entire container
//                         height: double
//                             .infinity, // Ensure the image fills the container height
//                         width: double
//                             .infinity, // Ensure the image fills the container width
//                       ),
//                     ),
//                   ),

//                   // child: Container(
//                   //   padding: EdgeInsets.all(16),
//                   //   decoration: BoxDecoration(
//                   //     color: Colors.white.withOpacity(0.7),
//                   //     borderRadius: BorderRadius.circular(12),
//                   //   ),
//                   //   height: 250, // Increase the height of the container
//                   //   child: Column(
//                   //      // Center content vertically
//                   //     children: [
//                   //       Image.asset(
//                   //         'assets/images/wet2.jpg', // Replace with your weather image asset path
//                   //         height: 150, // Increase the height of the image
//                   //       ),

//                   //     ],
//                   //   ),
//                   // ),
//                 ),
//                 // ),
//                 SizedBox(height: 20),
//                 // Row with two blocks for vegetables
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Color(0xFF132909)),
//                           color: Color(0xFFFFFFFF),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 100, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Wheat',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 // fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Text(
//                                   '1520/Q',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 SizedBox(width: 4),
//                                 Icon(
//                                   Icons.trending_up,
//                                   color: Colors.green,
//                                   size: 20,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Color(0xFF132909)),
//                           color: Color(0xFFFFFFFF),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 100, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Potato',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 // fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Text(
//                                   '5650/Q',
//                                   style: TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(width: 4),
//                                 Icon(
//                                   Icons.trending_up,
//                                   color: Colors.green,
//                                   size: 20,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 50),
//                 // Two rows with two boxes each
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xFFFFFFFF),
//                               Color.fromARGB(253, 255, 252, 198),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 150, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Box 1',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Content for Box 1',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xFFFFFFFF),
//                               Color.fromARGB(253, 255, 252, 198),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 150, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Box 2',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Content for Box 2',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 15),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xFFFFFFFF),
//                               Color.fromARGB(253, 255, 252, 198),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 150, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Box 3',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Content for Box 3',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.all(16),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color(0xFFFFFFFF),
//                               Color.fromARGB(253, 255, 252, 198),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         height: 150, // Increase the height here
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Box 4',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Content for Box 4',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.black54,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 40),
//                 // Center(
//                 //   child: Text(
//                 //     "Your content goes here",
//                 //     style: TextStyle(fontSize: 18, color: Colors.white),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFFECF5F6),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(top: 30, bottom: 30, left: 10, right: 10),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF132909),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.home,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             HomePage(), // Your Home Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.account_balance_wallet,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             WalletPage(), // Your Wallet Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             StorePage(), // Your Store Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.yellow),
//                       color: Color(0xFF132909),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.storefront,
//                       color: Colors.yellow,
//                       size: 35,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.notification_add,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             FavoritePage(), // Your Favorite Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(
//                     Icons.person,
//                     color: Colors.yellow,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       PageRouteBuilder(
//                         pageBuilder: (context, animation, secondaryAnimation) =>
//                             ProfilePage(), // Your Profile Page
//                         transitionsBuilder:
//                             (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;

//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation =
//                               CurvedAnimation(parent: animation, curve: curve);

//                           return SlideTransition(
//                             position: tween.animate(curvedAnimation),
//                             child: child,
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Page"),
      ),
      body: Center(
        child: Text("Details of the weather"),
      ),
    );
  }
}

// Define the other pages similarly:
// HomePage, WalletPage, StorePage, FavoritePage, ProfilePage

// class WalletPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Wallet Page"),
//       ),
//       body: Center(
//         child: Text("Details of the wallet"),
//       ),
//     );
//   }
// }

// Add StorePage, FavoritePage, ProfilePage similarly
class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet Page"),
      ),
      body: Center(
        child: Text("Details of the wallet"),
      ),
    );
  }
}

class BoxPage extends StatelessWidget {
  final String title;
  BoxPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title Content')),
    );
  }
}
