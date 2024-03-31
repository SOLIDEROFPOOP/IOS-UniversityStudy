// transition_screen.dart

import 'package:flutter/material.dart';

class TransitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transition Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
                transitionsBuilder: (context, animation, _, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                pageBuilder: (context, _, __) => DetailScreen(),
              ),
            );
          },
          child: Text('Fade Transition to Detail Screen'),
        ),
      ),
    );
  }
}
