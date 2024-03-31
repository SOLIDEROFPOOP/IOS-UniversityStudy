// tab_navigation.dart

import 'package:flutter/material.dart';
import 'package:flutter_navigation/detail_screen.dart';
import 'package:flutter_navigation/task_screen.dart';

class TabNavigation extends StatefulWidget {
  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    DetailScreen(),
    TaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Navigation'),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Task',
          ),
        ],
      ),
    );
  }
}
