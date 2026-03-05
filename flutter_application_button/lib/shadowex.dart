import 'package:flutter/material.dart';

class Shadowex extends StatelessWidget {
  const Shadowex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Shadow example"),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
            color: Colors.green,
            blurRadius: 10,
            spreadRadius: 3
          )
          ]
        ),
        child: Text("shadow container"),
      ),
    ),
    );
  }
}