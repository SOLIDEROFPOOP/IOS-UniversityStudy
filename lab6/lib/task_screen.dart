// task_screen.dart

import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Screen'),
      ),
      body: Center(
        child: Text('This is the Task Screen'),
      ),
    );
  }
}
