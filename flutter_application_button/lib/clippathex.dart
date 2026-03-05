import 'package:flutter/material.dart';

class Clippathex extends StatefulWidget {
  const Clippathex({super.key});

  @override
  State<Clippathex> createState() => _ClippathexState();
}

class _ClippathexState extends State<Clippathex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Clip Rect Example"),
    ),
    body: Center(
    child: ClipRect(
      child: Align(
        alignment: Alignment.topCenter,
        heightFactor: 0.5,
        child: Image.network("https://img.freepik.com/free-photo/lavender-field-sunset-near-valensole_268835-3910.jpg?semt=ais_rp_progressive&w=740&q=80",
        width: 300,
        height: 200,
        ),
      ),
    )
    )
    );
  }
}