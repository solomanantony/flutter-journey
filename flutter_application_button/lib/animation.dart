import 'package:flutter/material.dart';

class Animationn extends StatefulWidget {
  const Animationn({super.key});

  @override
  State<Animationn> createState() => _AnimationnState();
}
bool isExpanded = false;
class _AnimationnState extends State<Animationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Animation", style: TextStyle(color: Colors.amber),),
      backgroundColor: Colors.black26,
    ),
    body: Column(
      children: [
        AnimatedContainer(duration: Duration(seconds: 5),
        width: isExpanded?200:100,
        color: isExpanded?Colors.red : Colors.amberAccent
         ),
         SizedBox(width: 20,),
         ElevatedButton(onPressed: (){
          isExpanded = !isExpanded;
         }, child: Text("Animation") )
      ],
    ),
     
    );
  }
}