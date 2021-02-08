import 'package:flutter/material.dart';
import 'package:testing/dashboard_Oyebeauty/courses.dart';
import 'package:testing/dashboard_Oyebeauty/safetydashboard.dart';

class dashboardproduct extends StatefulWidget {
  @override
  _dashboardproductState createState() => _dashboardproductState();
}

class _dashboardproductState extends State<dashboardproduct> {
  @override
  Widget build(BuildContext context) {
    bool _visible = true;
    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Short Course for you',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // courses
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                            Text('Package 1',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                              'Package 2',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                            Text('Package 1',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                            Text('Package 1',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                            Text('Package 1',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          children: <Widget>[
                            ClipOval(
                                child: CircleAvatar(
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
                            Text('Package 1',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: InkWell(
                        child: Text(
                          'View more',
                          style: TextStyle(
                              color: Color(
                                int.parse('0xffED008C'),
                              ),
                              decoration: TextDecoration.underline),
                        ),
                        onTap: () {
                          print('tapp');
                          NavigateToCourses();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Card(
            child: Column(
              children: <Widget>[
                // Safety measurement container
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Container(
                    color: Colors.blue,
                    width: 220,
                    height: 20,
                    child: Text(
                      'Safety Measurement',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            // height: 60,
                            child: Image.asset(
                              'images/dashboardOyebeauty/face-mask 1.jpg',
                              height: 50,
                              width: 80,
                            ),
                          ),
                          Text('Use Of Mask'),
                          Text('& Gloves')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: SizedBox(
                              // height: 60,
                              child: Image.asset(
                                'images/dashboardOyebeauty/Group 309.jpg',
                                height: 50,
                                width: 80,
                              ),
                            ),
                          ),
                          Text('Following'),
                          Text('W.H.O Guidelines')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: SizedBox(
                              // height: 100,
                              child: Image.asset(
                                'images/dashboardOyebeauty/Group 311.jpg',
                                height: 50,
                                width: 80,
                              ),
                            ),
                          ),
                          Text('Safety with'),
                          Text('Arogya setu app')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
        // safety measurement file
        Visibility(visible: _visible, child: safety()),
      ],
    );
  }

  void NavigateToCourses() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => courses()));
  }
}
