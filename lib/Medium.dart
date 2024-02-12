import 'package:flutter/material.dart';
import 'package:glowup/main_page.dart';

void main() {
  runApp(Outfit());
}

class Outfit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizeSelectionPage(),
    );
  }
}

class SizeSelectionPage extends StatefulWidget {
  @override
  _SizeSelectionPageState createState() => _SizeSelectionPageState();
}

class _SizeSelectionPageState extends State<SizeSelectionPage> {
  String selectedTopSize = "";
  double selectedWaistSize = 28.0;
  double selectedShoeSize = 6.0;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showTopSizeDialog();
            },
            child: Text(
              "Select Top Size: $selectedTopSize",
              style: TextStyle(
                fontFamily: 'Benne',
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Select Waist Size: ${selectedWaistSize.toInt()}",
            style: TextStyle(
              fontFamily: 'Benne',
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Slider(
            value: selectedWaistSize,
            min: 28.0,
            max: 44.0,
            onChanged: (value) {
              setState(() {
                selectedWaistSize = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text(
            "Select Shoe Size (UK): ${selectedShoeSize.toInt()}",
            style: TextStyle(
              fontFamily: 'Benne',
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Slider(
            value: selectedShoeSize,
            min: 6.0,
            max: 12.0,
            onChanged: (value) {
              setState(() {
                selectedShoeSize = value;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the NextPage if conditions are met
              if (selectedTopSize == "L" &&
                  selectedWaistSize >= 36.0 &&
                  selectedWaistSize <= 40.0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage()),
                );
              } else {
                // Handle the action for the "Next" button in other cases
              }
            },
            child: Text(
              "Next",
              style: TextStyle(
                fontFamily: 'Benne',
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Handle the action for "Don't know how to check your face shape? click here."
            },
            child: Text(
              "Don't know how to check your face shape? Click here.",
              style: TextStyle(
                fontFamily: 'Benne',
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showTopSizeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Top Size"),
          content: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTopSize = "S";
                  });
                  Navigator.pop(context);
                },
                child: Text("S"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTopSize = "M";
                  });
                  Navigator.pop(context);
                },
                child: Text("M"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTopSize = "L";
                  });
                  Navigator.pop(context);
                },
                child: Text("L"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedTopSize = "XL";
                  });
                  Navigator.pop(context);
                },
                child: Text("XL"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Medium extends StatelessWidget {
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
            "Here are some outfits for you:",
            style: TextStyle(
              fontFamily: 'Benne',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_20.png', 'img1');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img1',
                      child: Image.asset(
                        'assets/images/img_20.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_21.png', 'img2');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img2',
                      child: Image.asset(
                        'assets/images/img_21.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_22.png', 'img3');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img3',
                      child: Image.asset(
                        'assets/images/img_22.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_23.png', 'img4');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img4',
                      child: Image.asset(
                        'assets/images/img_23.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_24.png', 'img5');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img5',
                      child: Image.asset(
                        'assets/images/img_24.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showFullScreenImage(context, 'assets/images/img_25.png', 'img6');
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: 'img6',
                      child: Image.asset(
                        'assets/images/img_25.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
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
