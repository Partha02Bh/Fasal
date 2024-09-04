import 'package:flutter/material.dart';
import 'package:fasalaveer/Auth/verify.dart'; // Adjust import as needed
import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:fasalaveer/Auth/login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _signup() async {
    final String name = _nameController.text.trim();
    final String phoneNumber = _phoneController.text.trim();
    final String password = _passwordController.text.trim();
    final String confirmPassword = _confirmPasswordController.text.trim();

    if (name.isEmpty || phoneNumber.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      // Handle empty fields
      print("Please fill in all fields");
      return;
    }

    if (password != confirmPassword) {
      // Handle password mismatch
      print("Passwords do not match");
      return;
    }

    try {
      // Store user information in Firestore
      
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'phoneNumber': phoneNumber,
      });

      // Navigate to the verification page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyVerify(phoneNumber: phoneNumber),
        ),
      );
    } catch (e) {
      // Handle error
      print('Error signing up: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFD2F8CB),
      appBar: AppBar(
        backgroundColor: Color(0xFFD2F8CB),
        elevation: 0.10,
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35.0),
                          bottomRight: Radius.circular(35.0),
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
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FadeInUp(
                        duration: Duration(milliseconds: 1000),
                        child: Text(
                          "Create Your Account",
                          style: TextStyle(
                              color: Color(0xFF20400C),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      FadeInUp(
                        duration: Duration(milliseconds: 1200),
                        child: makeInput(controller: _nameController, label: "Name"),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: makeInput(controller: _phoneController, label: "Phone Number", obscureText: false),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: makeInput(controller: _passwordController, label: "Password", obscureText: true),
                      ),
                      FadeInUp(
                        duration: Duration(milliseconds: 1300),
                        child: makeInput(controller: _confirmPasswordController, label: "Confirm Password", obscureText: true),
                      ),
                      SizedBox(height: 20),
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
                              onPressed: _signup,
                              color: Color(0xFF20400C),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      FadeInUp(
                        duration: Duration(milliseconds: 1500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Have an account?"),
                            SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.blue),
                              ),
                            ),
                          ],
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

  Widget makeInput({required TextEditingController controller, required String label, bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black87),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
















// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:fasalaveer/Auth/login.dart';
// import 'package:fasalaveer/Auth/verify.dart';


// class SignupPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFD2F8CB),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFD2F8CB),
//         elevation: 0.10,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color(0xFFD2F8CB), // Top color
//                 Color(0xFFECF5F6), // Bottom color
//               ],
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.3,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(35.0),
//                           bottomRight: Radius.circular(35.0),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 20,
//                       left: 0,
//                       right: 0,
//                       child: Center(
//                         child: Image.asset(
//                           "assets/images/logo.png", // Replace with your logo asset path
//                           height: 200, // Adjust the size of the logo as needed
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1000),
//                         child: Text(
//                           "Create Your Account",
//                           style: TextStyle(
//                               color: Color(0xFF20400C),
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1200),
//                         child: makeInput(label: "Name"),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(
//                             label: "Phone Number", obscureText: true),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(
//                             label: "Password", obscureText: true),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(
//                             label: "Confirm Password", obscureText: true),
//                       ),
//                       SizedBox(height: 20),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1400),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 40),
//                           child: Container(
//                             padding: EdgeInsets.only(top: 3, left: 3),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: MaterialButton(
//                               minWidth: double.infinity,
//                               height: 60,
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => MyVerify(),
//                                   ),
//                                 );
//                               },
//                               color: Color(0xFF20400C),
//                               elevation: 0,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(50)),
//                               child: Text(
//                                 "Sign Up",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1500),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Text("Have an account?"),
//                             SizedBox(width: 8),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => LoginPage(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 "Login",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 18,
//                                     color: Colors.blue),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget makeInput({required String label, bool obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           label,
//           style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w400,
//               color: Colors.black87),
//         ),
//         SizedBox(height: 5),
//         TextField(
//           obscureText: obscureText,
//           decoration: InputDecoration(
//             contentPadding:
//                 EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }























// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';

// class SignupPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xFFD2F8CB),
//       appBar: AppBar(
//         backgroundColor: Color(0xFFD2F8CB),
//         elevation: 0.10,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Color(0xFFD2F8CB), // Top color
//                 Color(0xFFECF5F6), // Bottom color
//               ],
//             ),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.3,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(35.0),
//                           bottomRight: Radius.circular(35.0),
//                         ),
                        
//                       ),
//                     ),
//                     Positioned(
//                       top: 20,
//                       left: 0,
//                       right: 0,
//                       child: Center(
//                         child: Image.asset(
//                           "assets/images/logo.png", // Replace with your logo asset path
//                           height: 200, // Adjust the size of the logo as needed
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1000),
//                         child: Text(
//                           "Create Your Account",
//                           style: TextStyle(
//                               color: Color(0xFF20400C),
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1200),
//                         child: makeInput(label: "Name"),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(label: "Phone Number", obscureText: true),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(label: "Password", obscureText: true),
//                       ),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1300),
//                         child: makeInput(label: "Confirm Password", obscureText: true),
//                       ),
//                       SizedBox(height: 20),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1400),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 40),
//                           child: Container(
//                             padding: EdgeInsets.only(top: 3, left: 3),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: MaterialButton(
//                               minWidth: double.infinity,
//                               height: 60,
//                               onPressed: () {},
//                               color: Color(0xFF20400C),
//                               elevation: 0,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(50)),
//                               child: Text(
//                                 "Sign Up",
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 18),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       FadeInUp(
//                         duration: Duration(milliseconds: 1500),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Text("Have an account?"),
//                             SizedBox(width: 8),
//                             Text(
//                               "Login",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 18),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget makeInput({required String label, bool obscureText = false}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           label,
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
//         ),
//         SizedBox(height: 5),
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
//         SizedBox(height: 20),
//       ],
//     );
//   }
// }

