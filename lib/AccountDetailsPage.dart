import 'package:flutter/material.dart';
import 'package:glowup/main_page.dart';

void main() {
  runApp(Account());
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Start(),
    );
  }
}
class AccountDetailsPage extends StatelessWidget {
  final String userName;
  final String emailId;
  final int age;
  final String gender;

  // Constructor to receive user details
  const AccountDetailsPage({
    required this.userName,
    required this.emailId,
    required this.age,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: $userName",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Email ID: $emailId",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Age: $age",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Gender: $gender",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
