import 'package:flutter/material.dart';
import 'tab_navigation.dart'; // Import the file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigation(), // Use TabNavigation as the home screen
    );
  }
}
