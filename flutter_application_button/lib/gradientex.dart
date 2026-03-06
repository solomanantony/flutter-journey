import 'package:flutter/material.dart';

class Gradientex extends StatelessWidget {
  const Gradientex ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient Example"),
        backgroundColor: const Color.fromARGB(255, 231, 244, 111),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blueAccent,Colors.deepOrange])
        ),
        child: Text("Gradient colors", style: TextStyle(color: Colors.greenAccent)),
      ),
    );
  }
}