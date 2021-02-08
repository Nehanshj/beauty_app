import 'package:flutter/material.dart';
import '../courseDeep/slot.dart';

class Contents extends StatefulWidget {
  @override
  _ContentsState createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  bool cart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          //list of courses
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text(
              'Course Contents',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/Group.jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hair Color'),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/Group (1).jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Grooming'),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/Group (7).jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Treatment'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/Group (4).jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hair Styling'),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/022-haircut.jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hair cut'),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 5),
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 4),
                          child: Image.asset(
                              'images/dashboardOyebeauty/028-hair washing.jpg'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Hair spa'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text('Starter Kit:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 136,
                          height: 88,
                          color: Colors.black26,
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                          width: 136,
                          child: Text('Smoothing Treatment KeraCoffee')),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 136,
                          height: 88,
                          color: Colors.black26,
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                          width: 136,
                          child: Text('Smoothing Treatment KeraCoffee')),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 136,
                          height: 88,
                          color: Colors.black26,
                          child: Icon(
                            Icons.info,
                            size: 15,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Container(
                          width: 136,
                          child: Text('Smoothing Treatment KeraCoffee')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'View more',
              style: TextStyle(
                  color: Color(
                    int.parse('0xffED008C'),
                  ),
                  decoration: TextDecoration.underline),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
              child: Container(
                  color: cart ? Color(int.parse('0xffFCA600')) : Colors.red,
                  margin: EdgeInsets.all(4.0),
                  width: 328,
                  height: 45,
                  child: Center(
                      child: cart
                          ? Text('Added to Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15))
                          : Text('Add to Cart',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15)))),
              onTap: () {
                print('tap cart');
                setState(() {
                  cart = !cart;
                });
                // NavigateToSlot;
              }),
        ],
      ),
    );
  }

  void NavigateToSlot() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Slot()));
  }
}
