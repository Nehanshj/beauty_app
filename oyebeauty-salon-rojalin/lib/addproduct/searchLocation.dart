import 'package:flutter/material.dart';
import '../addproduct/map.dart';

class SearchLocation extends StatefulWidget {
  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse("0xffE5E5E5")),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Search Location',
          style: TextStyle(color: Colors.black),
        ),
      ),
      // seach a location
      body: Container(
        color: Color(int.parse("0xffE5E5E5")),
        height: 63,
        width: 360,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            child: Container(
              height: 35,
              color: Colors.white,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  'Seach Location',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Color(int.parse('0xffE5E5E5')),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Map()));
            },
          ),
        ),
      ),
    );
  }
}
