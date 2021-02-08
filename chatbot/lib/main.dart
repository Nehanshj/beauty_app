import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(13),
            margin: MediaQuery.of(context).padding,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('For You', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),),
                    SizedBox(width:8),
                    Text('Sticker', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),),
                    SizedBox(width:8),
                    Text('Status', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16),),
                  ],
                ),
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                  child: Container(
                    height: 3,
                    width: 52,
                    color: Colors.black,
                  ),
                  ),
                ],),
              ],
            ),  
          ),
          //search bar layout
          Container(
            child: Column(children: <Widget>[

            ],),
          ),
        ],
      ),
    );
  }
}