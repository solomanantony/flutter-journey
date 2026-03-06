import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text(
          "AppBar Example",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.delete, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.share, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),

      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Add Member", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text("Camera", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Edit", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text("Like", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt),
            title: Text("Add", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text("Alarm", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text("Save", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Call", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}