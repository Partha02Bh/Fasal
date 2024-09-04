// ignore: depend_on_referenced_packages
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fasalaveer/Auth/signup.dart';


// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           // flexibleSpace: Image(
//           //   image: AssetImage('assets/images/appbar1.png'),
//           //   fit: BoxFit.cover,
//           //   opacity: const AlwaysStoppedAnimation(.9),
//           // ),
//           backgroundColor: Colors.brown,
//           elevation: 0.10,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back_ios,
//               size: 20,
//               color: Colors.black,
//             ),
//           ),
//         ),
//         body: SafeArea(
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(0xFFD2F8CB), // Top color
//                   Color(0xFFECF5F6), // Bottom color
//                 ],
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   bottom: 600,
//                   left: 0,
//                   right: 0,
//                   top: 0,
//                   child: Container(
//                     height: screenHeight,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(35.0),
//                         bottomRight: Radius.circular(35.0),
//                       ),
//                       image: DecorationImage(
//                         image: AssetImage("assets/images/bg1.jpeg"),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 20,
//                   left: 0,
//                   right: 0,
//                   child: Center(
//                     child: Image.asset(
//                       "assets/images/logo.png", // Replace with your logo asset path
//                       height: 200, // Adjust the size of the logo as needed
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: double.infinity,
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 200),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       SizedBox(height: 20),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Column(
//                             children: <Widget>[
//                               FadeInUp(
//                                 duration: Duration(milliseconds: 1000),
//                                 child: Text(
//                                   "Login",
//                                   style: TextStyle(
//                                       color: Color(0xFF20400C),
//                                       fontSize: 30,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                             ],
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 30),
//                             child: Column(
//                               children: <Widget>[
//                                 FadeInUp(
//                                   duration: Duration(milliseconds: 1200),
//                                   child: makeInput(label: "Phone Number"),
//                                 ),
//                                 FadeInUp(
//                                   duration: Duration(milliseconds: 1300),
//                                   child: makeInput(
//                                       label: "Password", obscureText: true),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           FadeInUp(
//                             duration: Duration(milliseconds: 1400),
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 40),
//                               child: Container(
//                                 padding: EdgeInsets.only(top: 3, left: 3),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 child: MaterialButton(
//                                   minWidth: double.infinity,
//                                   height: 60,
//                                   onPressed: () {},
//                                   color: Color(0xFF20400C),
//                                   elevation: 0,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(50)),
//                                   child: Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 18),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10,),
//                           FadeInUp(
//                             duration: Duration(milliseconds: 1500),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: <Widget>[
//                                 Text("Don't have an account?"),
//                                 const SizedBox(width: 8),
//                                 Text(
//                                   "Sign up",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 18),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }

//   Widget makeInput({label, obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           label,
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         TextField(
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey.shade400),
//               borderRadius: BorderRadius.circular(100),
//             ),
//             border: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.grey.shade400),
//               borderRadius: BorderRadius.circular(100),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//       ],
//     );
//   }
// }



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFD2F8CB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 0.10,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFD2F8CB), // Top color
                Color(0xFFECF5F6), // Bottom color
              ],
            ),
          ),
          child: Stack(
            children: [
              // Positioned(
              //   bottom: 600,
              //   left: 0,
              //   right: 0,
              //   top: 0,
              //   child: Container(
              //     height: screenHeight,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //         // bottomLeft: Radius.circular(35.0),
              //         // bottomRight: Radius.circular(35.0),
              //       ),
              //       image: DecorationImage(
              //         image: AssetImage("assets/images/bg1.jpeg"),
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 200,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            FadeInUp(
                              duration: Duration(milliseconds: 1000),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xFF20400C),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: <Widget>[
                              FadeInUp(
                                duration: Duration(milliseconds: 1200),
                                child: makeInput(label: "Phone Number"),
                              ),
                              FadeInUp(
                                duration: Duration(milliseconds: 1300),
                                child: makeInput(
                                  label: "Password", 
                                  obscureText: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        FadeInUp(
                          duration: Duration(milliseconds: 1400),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              padding: EdgeInsets.only(top: 3, left: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
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
                                color: Color(0xFF20400C),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        FadeInUp(
                          duration: Duration(milliseconds: 1500),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account?"),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.w400, 
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(100),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class NewLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Login Page"),
      ),
      body: Center(
        child: Text("This is the new login page"),
      ),
    );
  }
}

class NewSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Signup Page"),
      ),
      body: Center(
        child: Text("This is the new signup page"),
      ),
    );
  }
}



