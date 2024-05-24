import 'package:flutter/material.dart';
import 'add_task_screen.dart';
import 'task_list_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: DefaultTabController(
        length: 2, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Todo App'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Tasks'), // First tab
                Tab(text: 'Add Task'), // Second tab
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TaskListScreen(), // First tab content
              AddTaskScreen(), // Second tab content
            ],
          ),
        ),
      ),
    );
  }
}
