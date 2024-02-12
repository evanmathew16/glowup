import 'package:flutter/material.dart';
import 'package:glowup/Large.dart';
import 'package:glowup/Medium.dart';
import 'package:glowup/Small.dart';
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
              if (selectedTopSize == "L" && selectedWaistSize >= 36.0 && selectedWaistSize <= 40.0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Large()),
                );
              }
              else if(selectedTopSize == "M" && selectedWaistSize >= 32.0 && selectedWaistSize <= 36.0){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Medium()),
                );
              }
              else if(selectedTopSize == "S" && selectedWaistSize >= 28.0 && selectedWaistSize <= 32.0){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Small()),
                );
              }
              else {
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
