import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyWidget(), debugShowCheckedModeBanner: false,
    );
  }
}class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        leading: Icon(Icons.menu, color:Colors.blue, ) ,
        backgroundColor: Colors.green ,
        title:Text("Flutter Intro", style: TextStyle(color: Colors.amber,
         fontSize: 16.0,
          fontWeight:FontWeight.bold ),
          ),
           actions: [
          Icon(Icons.settings),
          SizedBox(width: 20.0,),
          Icon(Icons.search_rounded)
        ],
        ),
      );
      
  }
}