import 'package:flutter/material.dart';
import 'FirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      debugShowCheckedModeBanner: false,
      home: FirstScreen(), // Set the FirstScreen as the home screen
    );
  }
}
