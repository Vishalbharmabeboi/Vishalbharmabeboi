import 'Credits.dart';
import 'package:flutter/material.dart';
import 'oninv.dart';
import 'prefest.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text(
              "Backstage Inventory App",
              style:
                  TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              textScaleFactor: 2.0,
            ),
            decoration: new BoxDecoration(color: Colors.black),
          ),
          ListTile(
            title: Text("Inventory"),
            leading: const Icon(Icons.bookmark),
            subtitle: Text("Long press for pre-fest Inventory"),
            onLongPress: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Preinv()));
            },
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Postinv()));
            },
          ),
          ListTile(
            title: Text("Credits"),
            leading: const Icon(Icons.accessibility_new),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Credits()));
            },
          )
        ],
      )),
      appBar: AppBar(
        title: Text("Welcome to the app"),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Welcome to Backstage Inventory App",
              textScaleFactor: 4.0,
              style: TextStyle(
                  fontStyle: FontStyle.italic, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
