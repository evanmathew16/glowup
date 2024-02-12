// HowToCheckFaceShapePage.dart

import 'package:flutter/material.dart';

class HowToCheckFaceShapePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Check Your Face Shape"),
        backgroundColor: Color(0xFFF3F0ED),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/face_shape_guide_image.png', // Replace with the actual image asset path
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
