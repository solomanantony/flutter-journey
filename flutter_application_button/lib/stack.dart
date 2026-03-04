import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
          children: [
          Container(
            height: 180,
            width:double.infinity,
            color: Colors.teal.shade700,),
            Positioned(
              top:60,
              left:0,
              right: 0,
              child: Column(
                children: [
                  Stack(
                    children:[
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://i.pravatar.cc/300',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.camera_alt, size: 15, color: Colors.teal.shade700,),
                        ),
                      )
                    ]
                  )
                ],
              )
            )
            ],
          )
        ],

      ),
    );
  }
}