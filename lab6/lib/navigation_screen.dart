// navigation_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_navigation/detail_screen.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(),
              ),
            );
          },
          child: Text('Go to Detail Screen'),
        ),
      ),
    );
  }
}
