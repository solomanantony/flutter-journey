import 'package:flutter/material.dart';
import 'package:flutter_application_10/page3.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Page3(), debugShowCheckedModeBanner: false);
  }
}