import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../dashboard_Oyebeauty/dashboardProduct.dart';
import '../dashboard_Oyebeauty/safetydashboard.dart';

import 'dashboardList.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController searchController = TextEditingController();
  String search;
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    //image Carousel
    Widget image_carausel = new Container(
      height: 112.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/dashboardOyebeauty/image 2.jpg'),
          AssetImage('images/dashboardOyebeauty/image 3.jpg'),
        ],
        autoplay: false,
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
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: Container(
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              elevation: 0.3,
              child: Center(
                child: ListTile(
                    title: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                          hintText: 'Search', border: InputBorder.none),
                      // onSaved: (input) => search = input,
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    )),
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

//list of products
          Expanded(
            child: ListView(
              children: <Widget>[
                image_carausel,
                Container(
                  child: Row(
                    children: <Widget>[
                      // image bar for carousel
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
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                DashboardList(),
                SizedBox(
                  height: 10,
                ),
                // more course packages
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
                        setState(() {
                          _visible = true;
                        });
                      },
                    ),
                  ),
                ),
                Visibility(visible: _visible, child: DashboardList()),
                SizedBox(
                  height: 15,
                ),
                // products
                Dashboardproduct(),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
      // Navigation bar
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //   selectedItemColor: Color(int.parse("0xffAB40FF")),
      //   unselectedItemColor: Colors.black26,
      //   selectedFontSize: 14,
      //   unselectedFontSize: 14,
      //   onTap: (value) {
      //     // Respond to item press.
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       title: Text('Home'),
      //       icon: Icon(Icons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       title: Text('Appointments'),
      //       icon: Icon(Icons.assignment_turned_in),
      //     ),
      //     BottomNavigationBarItem(
      //         title: Text('Products'),
      //         icon: Icon(
      //           Icons.assessment,
      //         )),
      //     BottomNavigationBarItem(
      //       title: Text('Accounts'),
      //       icon: Icon(Icons.account_circle),
      //     ),
      //   ],
      // ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        child: Image.asset(
          'images/chat 1 1.png',
          // 'images/dashboardOyebeauty/chat 1.jpg', width: 95,
        ),
      ),
    );
  }
}
