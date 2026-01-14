import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration:BoxDecoration(color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 5),
              gradient: LinearGradient(colors: [Colors.green,Colors.black, Colors.yellow])
              ),
              child: Center(child: Text("Hello")),
              ) ,
            
            ),
          
        ],
      ),
    );
  }
}