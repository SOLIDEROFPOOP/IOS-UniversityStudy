// data_screen.dart

import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  final String message;

  DataScreen({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Screen'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
