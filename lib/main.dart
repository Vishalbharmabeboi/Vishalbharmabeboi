import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new Homepage());
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
            child: new ListView(
      children: <Widget>[
        new DrawerHeader(child: new Text("Backstage Inventory App",
        style: TextStyle(color:Colors.white , fontStyle: FontStyle.italic),textScaleFactor: 2.0,),
        decoration: new BoxDecoration(color: Colors.black), ),
        ListTile(title: Text("Inventory"),
        leading: const Icon(Icons.bookmark),
        subtitle: Text("Long press for pre-fest Inventory"),
        onLongPress:(){Navigator.push(context, new MaterialPageRoute(builder: (context) => new Preinv()));}  ,
        onTap:(){Navigator.pop(context);
          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Postinv()));} ,),
        ListTile(title: Text("Credits"),
        leading: const Icon(Icons.accessibility_new), 
        onTap:(){Navigator.pop(context);
        Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Credits()));} ,)
      ],
    )),
      appBar: AppBar(title: Text("Welcome to the app"),backgroundColor: Colors.black54,),
      body: Container(decoration: BoxDecoration(color: Colors.black),
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
         Text("Welcome to Backstage Inventory App",textScaleFactor: 4.0,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.blueAccent),textAlign: TextAlign.center,)
        ],),
      ),);
  }
}
class Preinv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar:new AppBar(title:new Text("Pre - Fest inventory app"),),)
    );
  }
}
class Postinv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: new AppBar(title: new Text("On - Fest inventory app"),),)
    );
  }
}
class Credits extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body:Container(decoration: BoxDecoration(color: Colors.black),
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
          Text("Inventory App By:",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 3.0,style: TextStyle(color: Colors.white) ,),
          Text("Ashwani(AshK)",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,),
          Text("Vishal",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,),
          Text("Siddhi",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,),
          Text("Ayushi",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,),
          Text("Arvind",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,),
          Text("Raghav",textAlign: TextAlign.center,textWidthBasis: TextWidthBasis.parent,textScaleFactor: 2.0,style: TextStyle(color: Colors.white) ,) 
        ],),
      ) ,));
  }
}