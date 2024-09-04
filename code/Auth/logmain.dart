import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fasalaveer/Auth/login.dart';
import 'package:fasalaveer/Auth/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight, // 80% of screen height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  "assets/images/logo.png", // Replace with your logo asset path
                  height: 200, // Adjust the size of the logo as needed
                ),
              ),
            ),
            // Foreground content
            Container(
              width: double.infinity,
              height: screenHeight,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1500),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          color: Color(0xFFFFFDFFC6),
                          shape: RoundedRectangleBorder(
                            // side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // border: Border.all(color: Colors.black),
                          ),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                            color: const Color.fromARGB(80, 217, 217, 217),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Column(
                  //   children: <Widget>[
                  //     FadeInUp(
                  //       duration: Duration(milliseconds: 1000),
                  //       child: Text(
                  //         "Terms of Service",
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 30,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Terms of Service",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Column(
        //   children: <Widget>[
        //     FadeInUp(
        //       duration: Duration(milliseconds: 1000),
        //       child: Text(
        //         "Terms of Service",
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 30,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}












// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:login_page_day_23/login.dart';
// import 'package:login_page_day_23/signup.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     ),
//   );
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // Background Image
//             Positioned(
//               bottom: 100,
//               left: 0,
//               right: 0,
//               child: Container(
//                 height: screenHeight, // 80% of screen height
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/bg1.jpeg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             // Logo Positioned 20 pixels from the top
//             Positioned(
//               top: 20,
//               left: 0,
//               right: 0,
//               child: Center(
//                 child: Image.asset(
//                   "assets/images/logo.png", // Replace with your logo asset path
//                   height: 200, // Adjust the size of the logo as needed
                
//                 ),
//               ),
//             ),
//             // Foreground content
//             Container(
//               width: double.infinity,
//               height: screenHeight,
//               padding: EdgeInsets.symmetric(horizontal: 30, vertical: 480),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   // Column(
//                   //   children: <Widget>[
//                   //     FadeInUp(
//                   //       duration: Duration(milliseconds: 1000),
//                   //       child: Text(
//                   //         "Welcome",
//                   //         style: TextStyle(
//                   //           fontWeight: FontWeight.bold,
//                   //           fontSize: 30,
//                   //         ),
//                   //       ),
//                   //     ),
//                   //     SizedBox(height: 20),
//                   //     FadeInUp(
//                   //       duration: Duration(milliseconds: 1200),
//                   //       child: Text(
//                   //         "Automatic identity verification which enables you to verify your identity",
//                   //         textAlign: TextAlign.center,
//                   //         style: TextStyle(
//                   //           color: Colors.grey[700],
//                   //           fontSize: 15,
//                   //         ),
//                   //       ),
//                   //     ),
//                   //   ],
//                   // ),
//                   Column(
//                     children: <Widget>[
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1500),
//                         child: MaterialButton(
//                           minWidth: double.infinity,
//                           height: 60,
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => LoginPage(),
//                               ),
//                             );
//                           },
//                           color: Color(0xFFFFFDFFC6),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: Text(
//                             "Login",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1600),
//                         child: Container(
//                           padding: EdgeInsets.only(top: 3, left: 3),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: MaterialButton(
//                             minWidth: double.infinity,
//                             height: 60,
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => SignupPage(),
//                                 ),
//                               );
//                             },
//                             color: const Color.fromARGB(80, 217, 217, 217),
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Text(
//                               "Sign up",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
