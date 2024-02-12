import 'package:flutter/material.dart';
import 'package:glowup/main_page.dart';

void main() {
  runApp(Eyewear());
}

class Eyewear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Start(),
    );
  }
}

class FaceShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F0ED),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3F0ED),
        title: Text(
          "glowup",
          style: TextStyle(
            fontFamily: 'HeaderFont',
            fontSize: 40,
            color: Color(0xFF9E2D0B),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Select Face Shape:",
            style: TextStyle(
              fontFamily: 'Benne',
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // Handle image 1 click
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/img_7.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle image 2 click
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/img_8.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  // Handle image 3 click
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/img_9.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle image 4 click
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/img_10.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Navigate to the HowToCheckFaceShapePage on button click
             
            },
            child: Text(
              "Don't know how to check your face shape? Click here.",
              style: TextStyle(
                fontFamily: 'Benne',
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
