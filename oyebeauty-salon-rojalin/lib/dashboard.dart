import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  TextEditingController nameController = TextEditingController();
  String name;
  @override
  Widget build(BuildContext context) {
    //image Carousel
    Widget image_carausel = Container(
      height: 112.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/salon1.png'),
          AssetImage('images/prime.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(int.parse("0xffAB40FF")),
          title: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 90.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
              child: Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                color: Colors.white,

                //search bar with search icon
                child: ListTile(
                  title: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                    onSaved: (input) => name = input,
                  ),
                  trailing: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 40.0,
              color: Color(int.parse("0xffAB40FF")),
              child: Padding(
                // location setting
                padding: const EdgeInsets.only(
                  right: 20.0,
                ),
                child: Container(
                    margin: EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          'Set your Location',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ],
                    )),
              ),
            ),
            // image carousel
            image_carausel,
            // image bar
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 90.0, top: 10),
                      child: Image.asset(
                        'images/back1.png',
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 8.0, top: 10),
                      child: Image.asset(
                        'images/back1.png',
                      )),
                ],
              ),
            ),
            // Oyebeauty Course package
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  child: Text(
                    'OYEBEAUTY COURSE PACKAGES',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
//list of products
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 25.0),
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
                                        margin: EdgeInsets.only(
                                            left: 15.0, top: 15.0),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.green),
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                            'images/prime.png',
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
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
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
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 25.0),
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
                                        margin: EdgeInsets.only(
                                            left: 15.0, top: 15.0),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.green),
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                            'images/curly.png',
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
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
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
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 25.0),
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
                                        margin: EdgeInsets.only(
                                            left: 15.0, top: 15.0),
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.green),
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
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                            'images/hair.png',
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
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
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
            )
          ],
        ));
  }
}
