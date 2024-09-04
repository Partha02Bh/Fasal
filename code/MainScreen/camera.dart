import 'package:dotted_border/dotted_border.dart';
import 'package:fasalaveer/MainScreen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:fasalaveer/main.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: CaptureScreen(),
//     );
//   }
// }

import 'package:image_picker/image_picker.dart';
import 'dart:io';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CameraCaptureScreen(),
//     );
//   }
// }

class CaptureImagePage extends StatefulWidget {
  @override
  _CaptureImagePageState createState() => _CaptureImagePageState();
}

class _CaptureImagePageState extends State<CaptureImagePage> {
  File? _image;

  Future<void> _captureImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _importFromDevice() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEEAD9), // Light green background
      appBar: AppBar(
        title: Text('        Capture Image'),
        backgroundColor: Color(0xFFD2F8CB),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
      ),
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
          child: Column(
            children: [
              // Display the captured image or a placeholder
              Expanded(
                child: _image == null
                    ? Center(
                        child: Text(
                          'No image captured yet.',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      )
                    : Image.file(_image!),
              ),
              SizedBox(height: 16),
              // Buttons: Open Camera, Upload from Gallery, Try Again, Next
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    // Open Camera Button
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: _captureImage,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                              size: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Capture an Image ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                    DottedBorder(
                      color: Colors.black,
                      strokeWidth: 1.5,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20),
                      dashPattern: [
                        6,
                        4
                      ], // Adjust the dash pattern to make the dots larger or smaller
                      child: Container(
                        width: double.infinity,
                        color: Colors.transparent,
                        child: TextButton(
                          onPressed: _importFromDevice,
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.drive_folder_upload_rounded,
                                color: Colors.black,
                                size: 24,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Upload from Gallery',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // SizedBox(height: 16),
                    // Try Again Button
                    // Container(
                    //   width: double.infinity,
                    //   height: 40,
                    //   decoration: BoxDecoration(
                    //     color: Colors.transparent,
                    //     border: Border.all(
                    //       color: Colors.black,
                    //       width: 1,

                    //     ),
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   child: TextButton(
                    //     onPressed: _captureImage,
                    //     style: TextButton.styleFrom(
                    //       padding: EdgeInsets.symmetric(vertical: 1),
                    //     ),
                    //     child: Text(
                    //       'Try Again',
                    //       style: TextStyle(
                    //         color: Color(0xFF008615),
                    //         fontSize: 18,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 16),
                    // Next Button
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Handle Next button press, e.g., navigate to another screen
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
            ],
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
}

// class CaptureImagePage extends StatefulWidget {
//   @override
//   _CaptureImagePageState createState() => _CaptureImagePageState();
// }

// class _CaptureImagePageState extends State<CaptureImagePage> {
//   File? _image;

//   Future<void> _captureImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.camera);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   Future<void> _importFromDevice() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFDEEAD9), // Light green background
//       appBar: AppBar(
//         title: Text('Capture Image'),
//         backgroundColor: Color(0xFFD2F8CB),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         automaticallyImplyLeading: true,
//       ),
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
//           child: Column(
//             children: [
//               // Display the captured image or a placeholder
//               Expanded(
//                 child: _image == null
//                     ? Center(
//                         child: Text(
//                           'No image captured yet.',
//                           style: TextStyle(fontSize: 18, color: Colors.black),
//                         ),
//                       )
//                     : Image.file(_image!),
//               ),
//               SizedBox(height: 16),
//               // Buttons: Upload from Gallery, Try Again, Next
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Column(
//                   children: [
//                     // Upload from Gallery Button
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                           color: Colors.grey,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: TextButton(
//                         onPressed: _importFromDevice,
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.photo_library,
//                               color: Colors.grey,
//                               size: 24,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               'Upload from Gallery',
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     // Try Again Button
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(
//                           color: Colors.grey,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: TextButton(
//                         onPressed: _captureImage,
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                         ),
//                         child: Text(
//                           'Try Again',
//                           style: TextStyle(
//                             color: Colors.grey,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16),
//                     // Next Button
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF132909),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: TextButton(
//                         onPressed: () {
//                           // Handle Next button press, e.g., navigate to another screen
//                         },
//                         style: TextButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 16),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Next',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             SizedBox(width: 8),
//                             Icon(
//                               Icons.arrow_forward,
//                               color: Colors.white,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 32),
//             ],
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
//                             // WalletPage(), // Your Wallet Page
//                             CaptureImagePage(),
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
