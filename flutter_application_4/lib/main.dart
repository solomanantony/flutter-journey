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
        leading: Icon(Icons.menu ) ,
        backgroundColor: const Color.fromARGB(255, 165, 99, 241) ,
        title:Text("Page tile", style: TextStyle(color: Colors.amber,
         fontSize: 18.0,
          fontWeight:FontWeight.bold ),
          ),
           actions: [
          Icon(Icons.favorite),
          SizedBox(width: 20.0,),
          Icon(Icons.search_rounded),
          SizedBox(width: 20.0,),
          Icon(Icons.more_vert)
        ],
        ),

body:Column(

  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("flutterrrrrrrrrrr"),
    Text("flutter"),
    Text("flutterrrrrrrrrrrrr")
  ],
)
      );
      
  }
}