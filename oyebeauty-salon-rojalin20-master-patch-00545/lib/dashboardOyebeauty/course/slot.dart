import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_utils/date_utils.dart';
import 'package:testing/addproduct/address.dart';

class slot extends StatefulWidget {
  @override
  _slotState createState() => _slotState();
}

class _slotState extends State<slot> {
  bool timeborder = false;
  DateTime _currentdate = new DateTime.now();
  String month;
  // list of months
  List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    // String formatdate = new DateFormat.d().format(_currentdate);
    // String formatday = new DateFormat.E().format(_currentdate);
    // get the date and day
    var today = new DateTime.now();
    var dayOfWeek = 1;
    DateTime day = new DateTime.now();
    String formatter = DateFormat('yMd').format(day);
    return Scaffold(
      backgroundColor: Color(int.parse("0xffE5E5E5")),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          children: <Widget>[
            Text(
              'Slot Booking',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                margin: EdgeInsets.only(left: 120),
                child: Icon(Icons.shopping_cart))
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, right: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.white),

            // color: Colors.white,
            // dropdown button for months
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  hint: Text('January'),
                  dropdownColor: Colors.white,
                  icon: Container(
                      width: 30,
                      height: 50,
                      child: Icon(Icons.arrow_drop_down)),
                  value: month,
                  items: months.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(value)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      month = value;
                    });
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (var i = 0; i < 10; i++)
                  InkWell(
                    child: Card(
                      shape: timeborder
                          ? RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white))
                          : RoundedRectangleBorder(
                              side: BorderSide(color: Colors.blue)),
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              //list of days and date
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 10, left: 10, right: 10),
                                  child: Text(
                                    '${DateFormat.E().format(today.add(new Duration(days: i)))}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  )),
                              Container(
                                  child: Text(
                                '${today.add(new Duration(days: i)).day}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 24),
                              )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        timeborder = !timeborder;
                      });
                    },
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // select time slot
          Container(
            margin: EdgeInsets.only(right: 250, bottom: 10),
            child: Text('Select time'),
          ),

          Container(
            margin: EdgeInsets.only(left: 45, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Card(
                    // shape: RoundedRectangleBorder(
                    //     side: BorderSide(color: Colors.blue)),
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 45, top: 5, bottom: 5),
            child: Row(
              children: <Widget>[
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
                Card(
                    margin:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    color: Color(int.parse("0xff53D4FD")),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 20, top: 5, bottom: 5),
                        child: Text('10.00'))),
              ],
            ),
          ),
          SizedBox(
            height: 140,
          ),
          // Navigate to next screen
          InkWell(
              child: Container(
                  color: Color(int.parse("0xffFCB001")),
                  margin: EdgeInsets.all(4.0),
                  width: 328,
                  height: 45,
                  child: Center(
                      child: Text('Next',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))),
              onTap: NavigateToAddress),
        ],
      ),
    );
  }

  void NavigateToAddress() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => address()));
  }
}
