import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'course/hairTreatment.dart';

class courses extends StatefulWidget {
  @override
  _coursesState createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
          child: Text(
            'Short Courses For You',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
                              radius: 30,
                              child: SizedBox(
                                child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg',
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Waxing',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        onTap: NavigateToTreatment,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Nail Art',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Grooming',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              child: Image.asset(
                                'images/dashboardOyebeauty/Ellipse 55.jpg',
                              ),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Hair Cut',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Hair Colour',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Skin Treatment',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              child: Image.asset(
                                'images/dashboardOyebeauty/Ellipse 55.jpg',
                              ),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Makeup',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Mehendi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Tatoo',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 40, top: 10),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              child: Image.asset(
                                'images/dashboardOyebeauty/Ellipse 55.jpg',
                              ),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Waxing',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Nail Art',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.black12,
                        height: 70,
                        width: 1,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ClipOval(
                              child: CircleAvatar(
                            radius: 30,
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                  'images/dashboardOyebeauty/Ellipse 55.jpg'),
                            ),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Grooming',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }

  void NavigateToTreatment() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => hairTreatment()));
  }
}
