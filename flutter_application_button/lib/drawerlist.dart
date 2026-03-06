import 'package:flutter/material.dart';

class DtawerMenu extends StatelessWidget {
  const DtawerMenu({super.key});

  void showAlert(BuildContext context){
    showDialog(context: context, builder: (BuildContext context ){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text("Settings"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);}
            , child: Text("cancel")
            ),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("okay"))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("drawer example"),
        actions: [
          Icon(Icons.delete),
          SizedBox(width: 15),
          Icon(Icons.share),
          SizedBox(width: 15),
          Icon(Icons.ring_volume),
          SizedBox(width: 15)],
        leading: Builder(builder: (context)=> IconButton(onPressed:Scaffold.of(context).openDrawer , icon: Icon(Icons.menu))),
      ),
    drawer: Drawer(
      child: ListView(
        children:<Widget>[
          DrawerHeader(
            child: Text("Drawer Header"),
            decoration: BoxDecoration(color: const Color.fromARGB(255, 29, 206, 233)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title:Text("home"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Add Member") ,
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Camera"),
              onTap: (){
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("show snackbar"),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 5),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(label: "Undo", onPressed: (){
                    print("snackbar is clicked");
                  }),
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Edit"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken),
              title: Text("Like"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.person_add),
              title: Text("Add"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.save),
              title: Text("Save"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.call),
              title: Text("Call"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.map),
              title: Text("Map"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                showAlert(context);
              },
            ),
        ],
      ),
    ),
    );
  }
}