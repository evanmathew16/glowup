import 'dart:async';
import 'dart:js';

import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget{
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: context=> DashBoardScreen(),
      ))
    })

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Image,
      ),
    )
}
}