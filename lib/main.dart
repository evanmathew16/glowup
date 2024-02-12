import 'package:flutter/material.dart';
import 'package:glowup/first_page.dart';
import 'package:glowup/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText= TextEditingController();
  var passText= TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFFF3F0ED), // Set the background color for the entire screen
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
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30), // Adjust the padding as needed
                child: Text(
                  "Welcome to GlowUp",
                  style: TextStyle(
                    fontFamily: 'Benne',
                    fontSize: 30,
                    color: Colors.black, // Set the color for the welcome text
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailText,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Enter email',
                            hintStyle: TextStyle(
                                fontFamily: 'Benne'),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        TextField(
                          controller: passText,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter password',
                            hintStyle: TextStyle(
                                fontFamily: 'Benne'),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: (){},
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GenderPage(),
                              ),
                            );
                            String uEmail = emailText.text.toString();
                            String uPass = passText.text;
                            print("Email: $uEmail, Pass: $uPass");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent, // Set the background color to green
                          ),
                          child: Text('Login',
                            style: TextStyle(
                              fontFamily: 'Benne',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          'OR',
                          style: TextStyle(
                            fontFamily: 'Benne',
                            color: Colors.black,

                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            // Handle Continue with Google action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green, // Set the background color to green
                          ),
                          child: Text('Continue with Google',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Benne',

                              color: Colors.black,
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ));
  }
}