import 'package:flutter/material.dart';
import 'package:flutter_application_7/container.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}