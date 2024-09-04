import 'package:fasalaveer/MainScreen/HomePage.dart';
import 'package:fasalaveer/MainScreen/camera.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PlantationGuideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFDFFC6),
      appBar: AppBar(
        title: Text(
          'Plantation Guide',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFDFFC6),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                // First Box
                buildPlantationBox(
                  context,
                  'Wheat',
                  'assets/images/wheat.png',
                  'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
                  'assets/wheat_guide.pdf', // Path to your PDF asset
                ),
                SizedBox(height: 20), // Space between boxes
                // Second Box
                buildPlantationBox(
                  context,
                  'Sugarcane',
                  'assets/images/sugercane.png',
                  'Sugarcane is a tropical plant known for its high sugar content. It thrives in warm climates and requires regular irrigation and nutrient-rich soil for optimal growth.',
                  'assets/sugarcane_guide.pdf', // Path to your PDF asset
                ),
                SizedBox(height: 20), // Space between boxes
                // Third Box
                buildPlantationBox(
                  context,
                  'Potato',
                  'assets/images/potato.png',
                  'Potatoes are a versatile crop that grows well in cool climates. They need well-drained soil and consistent watering to produce high-quality tubers.',
                  'assets/sih.pdf', // Path to your PDF asset
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFFDFFC6),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
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
                            HomePage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
                            CaptureImagePage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
                            StorePage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
                            FavoritePage(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
                            PlantationGuideScreen(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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

  Widget buildPlantationBox(BuildContext context, String title, String imagePath, String description, String pdfPath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PDFViewer(pdfPath: pdfPath),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFDFFC6),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 60,
                  width: 60,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1), // Space between the title and the horizontal line
            Divider(
              color: Colors.grey, // Color of the horizontal line
              thickness: 0, // Thickness of the horizontal line
            ),
            SizedBox(height: 1), // Space between the line and the description
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PDFViewer(pdfPath: pdfPath),
                    ),
                  );
                },
                child: Text('View PDF'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Color(0xFF132909), // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PDFViewer extends StatelessWidget {
  final String pdfPath;

  PDFViewer({required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
        backgroundColor: Color(0xFF132909),
      ),
      body: FutureBuilder<ByteData>(
        future: rootBundle.load(pdfPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading PDF'));
          } else {
            final byteData = snapshot.data!;
            final bytes = byteData.buffer.asUint8List();
            return PDFView(
              pdfData: bytes,
            );
          }
        },
      ),
    );
  }
}


// import 'package:flutter/services.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';

// class PlantationGuideScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFFDFFC6),
//       appBar: AppBar(
//         title: Text(
//           'Plantation Guide',
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFFDFFC6),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         automaticallyImplyLeading: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 0),
//                 // First Box
//                 buildPlantationBox(
//                   context,
//                   'Wheat',
//                   'assets/images/wheat.png',
//                   'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
//                   'assets/sih.pdf', // Path to your PDF asset
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Second Box
//                 buildPlantationBox(
//                   context,
//                   'Sugarcane',
//                   'assets/images/sugercane.png',
//                   'Sugarcane is a tropical plant known for its high sugar content. It thrives in warm climates and requires regular irrigation and nutrient-rich soil for optimal growth.',
//                   'assets/sih.pdf', // Path to your PDF asset
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Third Box
//                 buildPlantationBox(
//                   context,
//                   'Potato',
//                   'assets/images/potato.png',
//                   'Potatoes are a versatile crop that grows well in cool climates. They need well-drained soil and consistent watering to produce high-quality tubers.',
//                   'assets/sih.pdf', // Path to your PDF asset
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFFFDFFC6),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF132909),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
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
//                             HomePage(),
//                         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
//                             CaptureImagePage(),
//                         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
//                             StorePage(),
//                         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
//                             FavoritePage(),
//                         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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
//                             PlantationGuideScreen(),
//                         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                           const begin = Offset(0.0, 1.0);
//                           const end = Offset.zero;
//                           const curve = Curves.ease;
//                           final tween = Tween(begin: begin, end: end);
//                           final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);
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

//   Widget buildPlantationBox(BuildContext context, String title, String imagePath, String description, String pdfPath) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(title: title),
//           ),
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFFDFFC6),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey, width: 0),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   imagePath,
//                   height: 60,
//                   width: 60,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 1), // Space between the title and the horizontal line
//             Divider(
//               color: Colors.grey, // Color of the horizontal line
//               thickness: 0, // Thickness of the horizontal line
//             ),
//             SizedBox(height: 1), // Space between the line and the description
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey[700],
//               ),
//             ),
//             SizedBox(height: 15),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => PDFScreen(pdfPath: pdfPath),
//                     ),
//                   );
//                 },
//                 child: Text('Download PDF'),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.yellow,
//                   backgroundColor: Color(0xFF132909), // Text color
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PDFScreen extends StatelessWidget {
//   final String pdfPath;

//   PDFScreen({required this.pdfPath});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PDF Viewer'),
//         backgroundColor: Colors.white,
//       ),
//       body: FutureBuilder<ByteData>(
//         future: rootBundle.load(pdfPath),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error loading PDF'));
//           } else {
//             final byteData = snapshot.data!;
//             final bytes = byteData.buffer.asUint8List();
//             return PDFView(
//               pdfData: bytes,
//             );
//           }
//         },
//       ),
//     );
//   }
// }










































// class PlantationGuideScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFFDFFC6),
//       appBar: AppBar(
//         title: Text(
//           'Plantation Guide',
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFFDFFC6),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         automaticallyImplyLeading: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 0),
//                 // First Box
//                 buildPlantationBox(
//                   context,
//                   'Wheat',
//                   'assets/images/wheat.png',
//                   'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
//                   'assets/wheat_guide.pdf', // Path to your PDF asset or URL
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Second Box
//                 buildPlantationBox(
//                   context,
//                   'Sugarcane',
//                   'assets/images/sugercane.png',
//                   'Sugarcane is a tropical plant known for its high sugar content. It thrives in warm climates and requires regular irrigation and nutrient-rich soil for optimal growth.',
//                   'assets/sugarcane_guide.pdf', // Path to your PDF asset or URL
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Third Box
//                 buildPlantationBox(
//                   context,
//                   'Potato',
//                   'assets/images/potato.png',
//                   'Potatoes are a versatile crop that grows well in cool climates. They need well-drained soil and consistent watering to produce high-quality tubers.',
//                   'assets/sih.pdf', // Path to your PDF asset or URL
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       // The rest of your bottom navigation bar code remains unchanged...
//       bottomNavigationBar: Container(
//         color: Color(0xFFFDFFC6),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF132909),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Your navigation bar buttons...
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
//                             PlantationGuideScreen(), // Your Profile Page
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

//   Widget buildPlantationBox(BuildContext context, String title,
//       String imagePath, String description, String pdfPath) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(title: title),
//           ),
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFFDFFC6),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey, width: 0),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   imagePath,
//                   height: 60,
//                   width: 60,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//                 height: 1), // Space between the title and the horizontal line
//             Divider(
//               color: Colors.grey, // Color of the horizontal line
//               thickness: 0, // Thickness of the horizontal line
//             ),
//             SizedBox(height: 1), // Space between the line and the description
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey[700],
//               ),
//             ),
//             SizedBox(height: 15),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   if (await canLaunch(pdfPath)) {
//                     await launch(pdfPath);
//                   } else {
//                     throw 'Could not open $pdfPath';
//                   }
//                 },
//                 child: Text('Download PDF'),
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.yellow,
//                   backgroundColor: Color(0xFF132909), // Text color
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }











// class PlantationGuideScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFFDFFC6),
//       appBar: AppBar(
//         title: Text(
//           'Plantation Guide',
//           style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFFDFFC6),
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.black),
//         automaticallyImplyLeading: true,
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 0),
//                 // First Box
//                 buildPlantationBox(
//                   context,
//                   'Wheat',
//                   'assets/images/wheat.png',
//                   'Wheat is a staple crop sown in the late fall or early winter, thriving in well-drained, loamy soils. Proper irrigation and timely fertilization assist healthy growth and high yields.',
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Second Box
//                 buildPlantationBox(
//                   context,
//                   'Sugarcane',
//                   'assets/images/sugercane.png', // Replace with your image asset path
//                   'Sugarcane is a tropical plant known for its high sugar content. It thrives in warm climates and requires regular irrigation and nutrient-rich soil for optimal growth.',
//                 ),
//                 SizedBox(height: 20), // Space between boxes
//                 // Third Box
//                 buildPlantationBox(
//                   context,
//                   'Potato',
//                   'assets/images/potato.png', // Replace with your image asset path
//                   'Potatoes are a versatile crop that grows well in cool climates. They need well-drained soil and consistent watering to produce high-quality tubers.',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFFFDFFC6),
//         child: Padding(
//           padding:
//               const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF132909),
//               borderRadius: BorderRadius.circular(40),
//             ),
//             padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
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
//                             CaptureImagePage(), // Your Capture Image Page
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
//                             PlantationGuideScreen(), // Your Profile Page
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

//   // Helper method to build a plantation box
//   Widget buildPlantationBox(BuildContext context, String title, String imagePath, String description) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DetailPage(title: title),
//           ),
//         );
//       },
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Color(0xFFFDFFC6),
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(color: Colors.grey, width: 0),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   imagePath,
//                   height: 60,
//                   width: 60,
//                 ),
//                 SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 1), // Space between the title and the horizontal line
//             Divider(
//               color: Colors.grey, // Color of the horizontal line
//               thickness: 0, // Thickness of the horizontal line
//             ),
//             SizedBox(height: 1), // Space between the line and the description
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.grey[700],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DetailPage extends StatelessWidget {
  final String title;

  DetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details about $title'),
      ),
    );
  }
}

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
