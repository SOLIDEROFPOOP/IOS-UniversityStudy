import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add task logic here
            Navigator.pop(context); // Go back to previous screen
          },
          child: Text('Add Task'),
        ),
      ),
    );
  }
}
