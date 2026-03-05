import 'package:flutter/material.dart';
import 'package:flutter_application_button/clippathex.dart';
//import 'package:flutter_application_button/datepicker.dart';
//import 'package:flutter_application_button/timepicker.dart';
//import 'package:flutter_application_button/drawerlist.dart';
//import 'package:flutter_application_button/dropdown.dart';
//import 'package:flutter_application_button/task1.dart';
//import 'package:flutter_application_button/floating.dart';
//import 'stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clippathex()//Time()//Date()//DtawerMenu()//Dropdown()//Task1()//MyWidget()//StackPage(),
      
    );
  }
}


