import 'package:discordapp/signup.dart';
import 'package:discordapp/splashscreen.dart';
import 'package:discordapp/walkthroughscreen.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the "DEBUG" banner
      home: SplashScreen(),





    );
  }
}

