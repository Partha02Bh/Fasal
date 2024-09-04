import 'package:fasalaveer/splash/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FasalVeer',
      theme: ThemeData(
        primaryColor: const Color(0xFF668F4F),
        scaffoldBackgroundColor: const Color(0xFFFDFFC6),
        textTheme:GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme:ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF668F4F),
          secondary: const Color(0xFFFDFFC6),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
