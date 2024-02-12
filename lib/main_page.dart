import 'package:flutter/material.dart';
import 'package:glowup/AccountDetailsPage.dart';
import 'package:glowup/SizeSelectionPage.dart';
import 'package:glowup/faceshape.dart';
import 'package:glowup/first_page.dart';
import 'package:glowup/hairstyle1.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GenderPage(),
    );
  }
}

class NextPage extends StatelessWidget {
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
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FaceShape(),
                    ),
                  );
                },
                child: Text("Eyewear",
                  style: TextStyle(
                    fontFamily: 'Benne',
                    color: Colors.black,
                    fontSize: 18,
                  ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HairstyleShape(),
                    ),
                  );
                },
                child: Text("Hairstyle",
                  style: TextStyle(
                    fontFamily: 'Benne',
                    color: Colors.black,
                    fontSize: 18,
                  ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SizeSelectionPage(),
                    ),
                  );
                },
                child: Text("Outfit",
                  style: TextStyle(
                    fontFamily: 'Benne',
                    color: Colors.black,
                    fontSize: 18,
                  ),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text("Some suggestions:",
            style: TextStyle(
              fontFamily: 'Benne',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImage(context, 'assets/images/img_1.png', 'img1'),
              _buildImage(context, 'assets/images/img_2.png', 'img2'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImage(context, 'assets/images/img_3.png', 'img3'),
              _buildImage(context, 'assets/images/img_4.png', 'img4'),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildImage(context, 'assets/images/img_5.png', 'img5'),
              _buildImage(context, 'assets/images/img_6.png', 'img6'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String imagePath, String heroTag) {
    return GestureDetector(
      onTap: () {
        _showFullScreenImage(context, imagePath, heroTag);
      },
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(
            tag: heroTag,
            child: Image.asset(
              imagePath,
              width: 180,
              height: 180,
            ),
          ),
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, String imagePath, String heroTag) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Hero(
              tag: heroTag,
              child: Image.asset(
                imagePath,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
