import 'package:flutter/material.dart';

class TweenEx extends StatelessWidget {
  const TweenEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween animation example"),
        backgroundColor: Colors.amber,
      ),
      body: TweenAnimationBuilder<double>(
        tween: Tween(
          begin: 0.0,end: 1.0),
           duration: Duration(seconds: 5), builder:( context,value,child){
            return Opacity(opacity: value,
            child: child,);
           },
           child: Text("Hello world", style: TextStyle(color: Colors.red, fontSize: 40),),
           ),);
    
  }
}