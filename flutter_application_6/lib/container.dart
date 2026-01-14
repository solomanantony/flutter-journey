import 'package:flutter/material.dart';

class Solo extends StatefulWidget {
  const Solo({super.key});

  @override
  State<Solo> createState() => _SoloState();
}

class _SoloState extends State<Solo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.blue,));
  }
}