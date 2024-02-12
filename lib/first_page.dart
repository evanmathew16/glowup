import 'package:flutter/material.dart';
import 'package:glowup/main.dart';
import 'package:glowup/main_page.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyApp(),
    );
  }
}

class GenderPage extends StatefulWidget {
  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String? selectedGender = "Select Gender";
  int selectedAge = 18;

  final List<String> genderOptions = ["Select Gender", "Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F0ED),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3F0ED), // Set the background color for the AppBar
        title: Text(
          "glowup",
          style: TextStyle(
            fontFamily: 'HeaderFont',
            fontSize: 40,
            color: Color(0xFF9E2D0B), // Set the text color for "glowup"
          ),
        ),
        centerTitle: true, // Add this line to center the title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: selectedGender,
              items: genderOptions.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,

                  child: Text(gender,
                    style: TextStyle(
                      fontFamily: 'Benne',

                      fontSize: 20,
                      color: Colors.black,
                    ),),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedGender = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Age: $selectedAge",
              style: TextStyle(
                fontFamily: 'Benne',

                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Slider(
              value: selectedAge.toDouble(),
              min: 18,
              max: 100,
              onChanged: (double newValue) {
                setState(() {
                  selectedAge = newValue.round();
                });
              },
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:
                      (context)=>NextPage(),
                  ));

            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent, // Set the background color to green
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'Benne',

                    fontSize: 20,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
