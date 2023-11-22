

import 'dart:async';

import 'package:discordapp/login.dart';
import 'package:discordapp/walkthroughscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {

      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>WalkThroughScreen(),)
      );});
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[ Image.asset(
      'assets/img_6.png',

    ),],

    ),
    ),);
  }
}
