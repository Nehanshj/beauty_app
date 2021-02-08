import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Paymentsuccess extends StatefulWidget {
  @override
  _PaymentsuccessState createState() => _PaymentsuccessState();
}

// payment success page
class _PaymentsuccessState extends State<Paymentsuccess> {
  final String assetName = 'images/dashboardOyebeauty/order successful.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse("0xffE5E5E5")),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 250.0,
            height: 120.0,
            margin: EdgeInsets.only(left: 20, top: 40),
            color: Colors.white,
            child: new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, bottom: 60),
                      child: Image.asset(
                          'images/dashboardOyebeauty/Group 734.jpg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100, bottom: 60),
                      child: Image.asset(
                          'images/dashboardOyebeauty/Group 730.jpg'),
                    ),
                  ],
                ),
                new Align(
                  alignment: Alignment.bottomRight,
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    // child: Image.asset(
                    //     'images/dashboardOyebeauty/order successful.jpg')
                    child: SvgPicture.asset(
                      // assetName,
                      'images/dashboardOyebeauty/order successful.svg',
                      height: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 100),
              child: Text(
                'Payment Successful!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
          ),
          Container(
            child: Text(
              'Thank you for shopping with us.',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
