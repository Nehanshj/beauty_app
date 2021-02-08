import 'package:flutter/material.dart';

class Skin extends StatefulWidget {
  @override
  _SkinState createState() => _SkinState();
}

class _SkinState extends State<Skin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 28.0, left: 196),
            width: 145,
            height: 15,
            color: Color(int.parse("0xffAB40FF")),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 28.0),
            // width: 100,
            height: 25,
            color: Color(int.parse("0xffAB40FF")),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
                'Gain the right skill to become a artist and offer professional services in bridal,airbrush,corporate and other.'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                Icon(Icons.access_time),
                Text('Duration : 324 hour'),
                Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Text(
                    'View',
                    style: TextStyle(color: Color(int.parse("0xffAB40FF"))),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Color(int.parse("0xffAB40FF")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
