import 'package:flutter/material.dart';

import 'package:myntra/view/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myntra',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Myntra'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
          actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.messenger),
      tooltip: 'Open ChatRoom',
      onPressed: () {
        Navigator.of(context)
              .pushReplacementNamed('/chatRoom');
      },
      ),],
    ),


     body: new ListView(
     children: <Widget>[
       new Padding(padding: const EdgeInsets.all(20.0),
        child: new Text('New Arrivals'),),

        //grid View
        Container(
          height:1120.0,
          child: Products(),
        )
     ],
      ),
      
    );
  }
}
