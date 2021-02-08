import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'images/dashboardOyebeauty/image 3.jpg',
  'images/dashboardOyebeauty/image 2.jpg',
];
final List child = map<Widget>(
  imgList,
  (index, i) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        child: ClipRRect(
          child: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Container(
                  //height: 175.5,
                  width: double.infinity,
                  child: Image.asset(i, fit: BoxFit.cover)),
            ),
          ]),
        ),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class topcourse extends StatefulWidget {
  @override
  _topcourseState createState() => _topcourseState();
}

class _topcourseState extends State<topcourse> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return
        // backgroundColor: Colors.white,
        SingleChildScrollView(
            child: Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.asset('images/dashboardOyebeauty/image 2.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20, right: 200),
            child: Text(
              'TOP PICKS FOR YOU',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Scroll widgets
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 141,
                          height: 215,
                          child: Card(
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    child: Image.asset(
                                        'images/dashboardOyebeauty/image 4.jpg'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Stay Quickry hide My Hickey Concelear',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.access_time),
                                        Column(
                                          children: <Widget>[
                                            Text('Course Duration:'),
                                            Text('324 Hours')
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 141,
                          height: 215,
                          child: Card(
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    child: Image.asset(
                                        'images/dashboardOyebeauty/image 5.jpg'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Stay Quickry hide My Hickey Concelear',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.access_time),
                                        Column(
                                          children: <Widget>[
                                            Text('Course Duration:'),
                                            Text('324 Hours')
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: 141,
                          height: 215,
                          child: Card(
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    child: Image.asset(
                                        'images/dashboardOyebeauty/image 5.jpg'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Stay Quickry hide My Hickey Concelear',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.access_time),
                                        Column(
                                          children: <Widget>[
                                            Text('Course Duration:'),
                                            Text('324 Hours')
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 220,
            child: CarouselSlider(
              items: child,
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: false,
                enlargeCenterPage: false,
                //aspectRatio: 2.0,
                onPageChanged: (index, _) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(
              imgList,
              (index, url) {
                return Container(
                  width: 7.0,
                  height: 7.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(210, 19, 123, 1)
                        : Color.fromRGBO(196, 196, 196, 1),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
