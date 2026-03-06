import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("App bar",style: TextStyle(fontStyle:FontStyle.italic, color:Colors.amber)),
    ),
    body: SizedBox(
      width: 100,
      height:100,
      child: FloatingActionButton(onPressed: (){},
      child: Text("Login"),
      ),
    ),
    );
  }
}