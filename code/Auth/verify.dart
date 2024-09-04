import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fasalaveer/Auth/login.dart'; // Replace with your home page import

class MyVerify extends StatefulWidget {
  final String phoneNumber; // Phone number passed from SignupPage

  const MyVerify({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String _verificationId;
  bool _codeSent = false;

  @override
  void initState() {
    super.initState();
    _sendVerificationCode();
  }

  Future<void> _sendVerificationCode() async {
    await _auth.verifyPhoneNumber(
      phoneNumber: widget.phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto-retrieval or instant verification
        await _auth.signInWithCredential(credential);
        _navigateToHomePage();
      },
      verificationFailed: (FirebaseAuthException e) {
        // Handle error
        print('Verification failed: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        setState(() {
          _verificationId = verificationId;
          _codeSent = true;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        setState(() {
          _verificationId = verificationId;
        });
      },
    );
  }

  Future<void> _verifyCode(String smsCode) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId,
        smsCode: smsCode,
      );

      await _auth.signInWithCredential(credential);
      _navigateToHomePage();
    } catch (e) {
      // Handle error
      print('Verification failed: $e');
    }
  }

  void _navigateToHomePage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your home page
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFBFAD6A)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color(0xFFBFAD6A)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color(0xFFBFAD6A),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
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
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ver.png',
                width: 350,
                height: 350,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We need to register your phone number to get started!",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                showCursor: true,
                onCompleted: (pin) {
                  _verifyCode(pin);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 290),
                    child: TextButton(
                      onPressed: () {
                        _sendVerificationCode();
                      },
                      child: Text(
                        "Resend Please",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF20400C),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    if (_codeSent) {
                      // The code has been sent, so proceed with verification
                      // For simplicity, we assume _verifyCode is called in onCompleted of Pinput
                    } else {
                      // Handle the case when the code has not been sent
                      print('Please wait until the code is sent.');
                    }
                  },
                  child: Text("Verify Phone Number"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
























// import 'package:fasalaveer/Auth/login.dart';
// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';

// class MyVerify extends StatefulWidget {
//   const MyVerify({Key? key}) : super(key: key);

//   @override
//   State<MyVerify> createState() => _MyVerifyState();
// }

// class _MyVerifyState extends State<MyVerify> {
//   @override
//   Widget build(BuildContext context) {
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: TextStyle(
//         fontSize: 20,
//         color: Color.fromRGBO(30, 60, 87, 1),
//         fontWeight: FontWeight.w600,
//       ),
//       decoration: BoxDecoration(
//         border: Border.all(color: Color(0xFFBFAD6A)),
//         borderRadius: BorderRadius.circular(20),
//       ),
//     );

//     final focusedPinTheme = defaultPinTheme.copyDecorationWith(
//       border: Border.all(color: Color(0xFFBFAD6A)),
//       borderRadius: BorderRadius.circular(8),
//     );

//     final submittedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         color: Color(0xFFBFAD6A),
//       ),
//     );

//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios_rounded,
//             color: Colors.black,
//           ),
//         ),
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFFD2F8CB), // Top color
//               Color(0xFFECF5F6), // Bottom color
//             ],
//           ),
//         ),
//         alignment: Alignment.topCenter,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/ver.png',
//                 width: 350,
//                 height: 350,
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Text(
//                 "Phone Verification",
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "We need to register your phone number to get started!",
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Pinput(
//                 length: 6,
//                 defaultPinTheme: defaultPinTheme,
//                 focusedPinTheme: focusedPinTheme,
//                 submittedPinTheme: submittedPinTheme,
//                 showCursor: true,
//                 onCompleted: (pin) => print(pin),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 290),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.pushNamedAndRemoveUntil(
//                           context,
//                           'phone',
//                           (route) => false,
//                         );
//                       },
//                       child: Text(
//                         "Resend Please",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: 400,
//                 height: 45,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF20400C),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   onPressed: () async{


//                     // Replace `NextPage` with the actual page you want to navigate to
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (context) => LoginPage(),
//                     //   ),
//                     // );
//                   },
//                   child: Text("Verify Phone Number"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

