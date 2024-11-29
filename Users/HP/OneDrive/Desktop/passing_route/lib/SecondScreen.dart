import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String email;

  // Constructor to accept name and email
  SecondScreen({required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name: $name'),
          Text('Email: $email'),
          ElevatedButton(
            onPressed: () {
              // Navigate back to the first screen
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
