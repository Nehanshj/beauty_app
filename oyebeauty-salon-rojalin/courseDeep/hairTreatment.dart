import 'package:beauty_app/addproduct/cart.dart';
import 'package:flutter/material.dart';
import '../courseDeep/contents.dart';
import '../courseDeep/gasRefill.dart';
import '../courseDeep/submissionform.dart';

class HairTreatment extends StatefulWidget {
  @override
  _HairTreatmentState createState() => _HairTreatmentState();
}

class _HairTreatmentState extends State<HairTreatment> {
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
            InkWell(
              child: Container(
                  margin: EdgeInsets.only(left: 120),
                  child: Icon(Icons.shopping_cart)),
              onTap: NavigateToCart,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              // course name
              Container(
                child:
                    Image.asset('images/dashboardOyebeauty/Rectangle 1620.jpg'),
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
              // ratings
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
              // Description
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
              // Duration of the courses
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
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
              // book now botton
              InkWell(
                child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(4.0),
                    width: 328,
                    height: 45,
                    child: Center(
                        child: Text('Book Now',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)))),
                onTap: () {
                  // go to the submissionform.dart file
                  submissionForm();
                },
              ),
              InkWell(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    margin: EdgeInsets.all(4.0),
                    width: 328,
                    height: 45,
                    child: Center(
                        child: Text('Enquiry',
                            style:
                                TextStyle(color: Colors.green, fontSize: 15)))),
                onTap: alertform,
                // It will go to gasRefill.dart form
              ),
              SizedBox(
                height: 20,
              ),
              // course contents
              Contents(),
              SizedBox(
                height: 20,
              ),
              // Container(
              //     margin: EdgeInsets.only(left: 20, right: 10),
              //     child: safetyMeasurements())
            ],
          ),
        ),
      ),
    );
  }

  void submissionForm() {
    var alert = new AlertDialog(
        content: Container(child: Submissionform()),
        insetPadding:
            EdgeInsets.only(left: 10.0, bottom: 45, top: 42, right: 10.0),
        contentPadding: EdgeInsets.all(0.0));
    showDialog(context: context, builder: (_) => alert);
  }

  void alertform() {
    var alert = new AlertDialog(
        content: Container(child: GasRefill()),
        insetPadding:
            EdgeInsets.only(left: 10.0, bottom: 45, top: 42, right: 10.0),
        contentPadding: EdgeInsets.all(0.0));
    showDialog(context: context, builder: (_) => alert);
  }

  void NavigateToCart() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
  }
}
