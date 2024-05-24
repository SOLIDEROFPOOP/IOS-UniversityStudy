import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
      ),
      body: Center(
        child: Text('Display List of Tasks Here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add'); // Navigate to AddTaskScreen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
