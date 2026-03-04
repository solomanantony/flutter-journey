import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedCountry = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:Text("Dropdown example"),
    ),
    body: Column(
      children: [
        Text("user name"),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
        Text("password"),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
        ),
        Text("mobile number"),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          )),
        ),
        //Dropdown button
        DropdownButtonFormField<String>(
              value: selectedCountry,
              decoration: InputDecoration(
                labelText: "Select country",
                border: OutlineInputBorder(),
              ),
              items: [
                DropdownMenuItem(value: "None", child: Text("None")),
                DropdownMenuItem(value: "Usa", child: Text("Usa")),
                DropdownMenuItem(value: "India", child: Text("India")),
                DropdownMenuItem(value: "Japan", child: Text("Japan")),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
            ),

        Center(
          child: SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              onPressed: () {}
            , child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Submit",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),)
            ],)),
          ),
        )
      ],
    ));
  }
}