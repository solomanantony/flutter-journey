import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

void showAlert(BuildContext context){
  showDialog(context: context, builder:(BuildContext context){
    return AlertDialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text("Are you sure to exit"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel")
        ),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("OK")
        ),
      ],
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        backgroundColor: const Color.fromARGB(255, 149, 222, 240),
        title: Text(
          "Title",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "AppBar Example",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.black),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                "Favourites",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                showAlert(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Friends",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                "Request",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.save),
              title: Text(
                "Policies",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                "Exit",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                showAlert(context);
              },
            ),

          ],
        ),
        
      ),
      body: Column(),


    );
  }
}