import 'package:flutter/material.dart';
import '../courseDeep/slot.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
        title: Row(
          children: <Widget>[
            Text(
              'Short Courses',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                margin: EdgeInsets.only(left: 120),
                child: Icon(Icons.shopping_cart))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 300, top: 10),
              child: Image.asset('images/dashboardOyebeauty/Group 578.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 120),
              child: Text(
                'Hair Treatment',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    letterSpacing: 1),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 20), child: Text('4.5')),
                Icon(
                  Icons.star,
                  color: Color(int.parse("0xffFFC237")),
                ),
                Icon(
                  Icons.star,
                  color: Color(int.parse("0xffFFC237")),
                ),
                Icon(
                  Icons.star,
                  color: Color(int.parse("0xffFFC237")),
                ),
                Icon(
                  Icons.star,
                  color: Color(int.parse("0xffFFC237")),
                ),
                Icon(
                  Icons.star,
                  color: Color(int.parse("0xffFFC237")),
                ),
                Container(
                  child: Text('(435 ratings)'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'A complete practical Hair treatment course for both beginner and Intermediate',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(right: 195),
                child: Text('Duration : 324 hours')),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      '₹',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '8640',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '7900',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '70%',
                  style: TextStyle(color: Colors.black45),
                )
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
            Container(
              margin: EdgeInsets.only(left: 5),
              child: SingleChildScrollView(
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
              height: 10,
            ),
            InkWell(
              child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.all(4.0),
                  width: 328,
                  height: 45,
                  child: Center(
                      child: Text('Add to cart',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15)))),
              onTap: () {
                // submissionForm();
              },
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  margin: EdgeInsets.all(4.0),
                  width: 328,
                  height: 45,
                  child: Center(
                      child: Text('Skip',
                          style: TextStyle(color: Colors.blue, fontSize: 15)))),
              onTap: NavigateToSlot,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 200),
              child: Text('Best seller:',
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
              height: 10,
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
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 160),
              child: Text('Currently trending:',
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
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  void NavigateToSlot() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Slot()));
  }
}
