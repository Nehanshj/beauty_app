import 'package:flutter/material.dart';
import '../dashboard_Oyebeauty/form.dart';
import '../dashboard_Oyebeauty/skin.dart';
import '../dashboard_Oyebeauty/topCourse.dart';
import '../dashboard_Oyebeauty/visibility.dart';

class Safety extends StatefulWidget {
  @override
  _SafetyState createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  @override
  bool fit = false;
  bool skins = false;
  bool hair = false;
  bool makeup = false;
  bool nail = false;
  bool manicure = false;
  bool course = false;

  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10, top: 20, right: 10),
                child: Text(
                  'PROFESSIONAL COURSES',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                            margin: EdgeInsets.only(left: 20, top: 40),
                            width: 136,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                    'images/dashboardOyebeauty/Rectangle 1611.jpg'))),
                        // ontap description functionality
                        InkWell(
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20,
                                ),
                                width: 136,
                                height: 40,
                                color: fit
                                    ? Color(int.parse("0xffAB40FF"))
                                    : Color(int.parse("0xffED008C")),
                                child: Center(
                                  child: Text(
                                    'FITNESS',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              // Visibility(visible: description, child: visible())
                            ],
                          ),
                          onTap: () {
                            // testing
                            print('tapped');

                            setState(() {
                              fit = !fit;
                              skins = false;
                            });
                          },
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                            margin: EdgeInsets.only(left: 40, top: 40),
                            width: 136,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                    'images/dashboardOyebeauty/Rectangle 1614.jpg'))),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 40,
                            ),
                            width: 136,
                            height: 40,
                            color: skins
                                ? Color(int.parse("0xffAB40FF"))
                                : Color(int.parse("0xffED008C")),
                            child: Center(
                              child: Text(
                                'SKIN',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            print('tapped');

                            setState(() {
                              skins = !skins;
                              fit = false;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                Visibility(
                  visible: fit,
                  child: Visible(),
                ),
                Visibility(
                  visible: skins,
                  child: Skin(),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                            margin: EdgeInsets.only(left: 20, top: 40),
                            width: 136,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                    'images/dashboardOyebeauty/Rectangle 1612.jpg'))),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 20,
                            ),
                            width: 136,
                            height: 40,
                            color: hair
                                ? Color(int.parse("0xffAB40FF"))
                                : Color(int.parse("0xffED008C")),
                            child: Center(
                              child: Text(
                                'HAIR',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              hair = !hair;
                              makeup = false;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.pink)),
                            margin: EdgeInsets.only(left: 40, top: 40),
                            width: 136,
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                    'images/dashboardOyebeauty/Rectangle 1615.jpg'))),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 40,
                            ),
                            width: 136,
                            height: 40,
                            color: makeup
                                ? Color(int.parse("0xffAB40FF"))
                                : Color(int.parse("0xffED008C")),
                            child: Center(
                              child: Text(
                                'Makeup',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              makeup = !makeup;
                              hair = false;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                Visibility(
                  visible: hair,
                  child: Visible(),
                ),
                Visibility(
                  visible: makeup,
                  child: Skin(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink)),
                        margin: EdgeInsets.only(left: 20, top: 40),
                        width: 136,
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                                'images/dashboardOyebeauty/Rectangle 1613.jpg'))),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        width: 136,
                        height: 40,
                        color: nail
                            ? Color(int.parse("0xffAB40FF"))
                            : Color(int.parse("0xffED008C")),
                        child: Center(
                          child: Text(
                            'Nail Art',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          nail = !nail;
                          manicure = false;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink)),
                        margin: EdgeInsets.only(left: 40, top: 40),
                        width: 136,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: 5, top: 5, right: 5, bottom: 5),
                            child: Image.asset(
                                'images/dashboardOyebeauty/Rectangle 1610.jpg'))),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 40,
                        ),
                        width: 136,
                        height: 40,
                        color: manicure
                            ? Color(int.parse("0xffAB40FF"))
                            : Color(int.parse("0xffED008C")),
                        child: Center(
                          child: Text(
                            'Manicure & Pedicure',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          manicure = !manicure;
                          nail = false;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
            Visibility(
              visible: nail,
              child: Visible(),
            ),
            Visibility(
              visible: manicure,
              child: Skin(),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'images/dashboardOyebeauty/image 12.jpg',
                        width: 180,
                      )),
                  InkWell(
                    child: Container(
                      height: 40,
                      color: course
                          ? Color(int.parse("0xffAB40FF"))
                          : Color(int.parse("0xffED008C")),
                      child: Center(
                        child: Text(
                          'Short Term Courses',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        course = !course;
                      });
                    },
                  )
                ],
              ),
            ),
            Visibility(
              visible: course,
              child: Container(
                child: Column(
                  children: <Widget>[
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
                              style: TextStyle(
                                  color: Color(int.parse("0xffAB40FF"))),
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
              ),
            ),
            Topcourse(),
            Textform()
          ],
        ),
      ),
    );
  }

  void NavigateToTopCourses() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Topcourse()));
  }
}
