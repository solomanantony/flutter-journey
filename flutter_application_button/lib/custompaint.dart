import 'package:flutter/material.dart';

class Custompaint extends StatelessWidget {
  const Custompaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Custom paint"),
      backgroundColor: Colors.amber,
    ),
    body: CustomPaint(
      size: Size(200, 200),
painter: CirclePainter(),
    )
    );
  }
}
class CirclePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint new_paint =Paint()
    ..color = Colors.green
    ..style =PaintingStyle.fill;
    canvas.drawCircle(Offset(100, 100),70,new_paint
    );
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false ;
    
}
  
