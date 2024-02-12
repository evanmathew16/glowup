import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glowup/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(
            title: 'GlowUp',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/img_13.png',
            fit: BoxFit.cover, // Set BoxFit.cover to make the image cover the whole screen
          ),
        ),
      ),
    );
  }
}
