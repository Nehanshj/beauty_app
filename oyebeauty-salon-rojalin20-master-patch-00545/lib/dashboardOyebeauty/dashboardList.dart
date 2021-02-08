import 'package:flutter/material.dart';

class list extends StatefulWidget {
  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
            child: Expanded(
              child: Container(
                height: 220,
                child: Card(
                    child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(left: 15.0, top: 15.0),
                                child: Text(
                                  'Salon PRIME',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Price  ₹799',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Card(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 40.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Rating'),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                              Text(
                                                '4.7+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Card(
                                      margin: EdgeInsets.only(
                                          top: 35.0, left: 15.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Experience'),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            '4-8 yrs',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 160,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 50,
                                  child: Image.asset(
                                                                               'images/dashboardOyebeauty/attractive-young-woman-beauty-salon-removebg-preview.jpg',

                                    // width: 150,
                                    // height: 150,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 42.0,
                        width: 350.0,
                        color: Color(int.parse("0xffEF807F")),
                        child: Center(
                          child: Text(
                            'View Package',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
            child: Expanded(
              child: Container(
                height: 220,
                child: Card(
                    child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(left: 15.0, top: 15.0),
                                child: Text(
                                  'Salon LUXE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Price  ₹799',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Card(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 40.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Rating'),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                              Text(
                                                '4.7+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Card(
                                      margin: EdgeInsets.only(
                                          top: 35.0, left: 15.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Experience'),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            '4-8 yrs',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 160,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 50,
                                  child: Image.asset(
                                                                             'images/dashboardOyebeauty/blonde-woman-with-curly-beautiful-hair-smiling-gray-background-removebg-preview.jpg',

                                    // width: 150,
                                    // height: 150,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 42.0,
                        width: 350.0,
                        color: Color(int.parse("0xff4481EC")),
                        child: Center(
                          child: Text(
                            'View Package',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
            child: Expanded(
              child: Container(
                height: 220,
                child: Card(
                    child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 20,
                                margin: EdgeInsets.only(left: 15.0, top: 15.0),
                                child: Text(
                                  'Salon light',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Price  ₹799',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Card(
                                      margin: EdgeInsets.only(
                                          left: 10.0, top: 40.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Rating'),
                                          Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.star,
                                                color: Colors.green,
                                                size: 20,
                                              ),
                                              Text(
                                                '4.7+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Card(
                                      margin: EdgeInsets.only(
                                          top: 35.0, left: 15.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text('Experience'),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            '4-8 yrs',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 160,
                            height: 170,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 50,
                                  child: Image.asset(
                                                                              'images/dashboardOyebeauty/female-hairdresser-making-hairstyle-redhead-woman-beauty-salon-removebg-preview (1) 1.jpg',

                                    // width: 150,
                                    // height: 150,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 42.0,
                        width: 350.0,
                        color: Color(int.parse("0xff5C0E0E")),
                        child: Center(
                          child: Text(
                            'View Package',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
