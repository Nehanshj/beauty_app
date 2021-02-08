import 'package:flutter/material.dart';
import '../addproduct/checkout.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Summary',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                margin: EdgeInsets.only(left: 160),
                child: Icon(Icons.shopping_cart))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 160),
                child: Text(
                  'Shipping address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(right: 270),
                child: Text(
                  'Lauren',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                    'Ahinsa - 2, Indirapuram, Ghaziabad, Uttar Pradesh, 201011 Phone: 8527920313'),
              ),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color(int.parse("0xffE5E5E5")),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 160, top: 10),
                child: Text(
                  'Promotional Codes',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    height: 40,
                    width: 213,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: Center(child: Text('Enter code')),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 20),
                    height: 40,
                    width: 84,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: Center(child: Text('Apply')),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color(int.parse("0xffE5E5E5")),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 10, right: 60),
                child: Text(
                  'Slot Booked : 29 January 2021 (4:00 pm)  ',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 180),
                child: Text(
                  'Hair Treatment Course',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        '₹',
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '8640',
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
                    '20% OFF',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 250, bottom: 20),
                child: Text('Quantity:1'),
              ),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color(int.parse("0xffE5E5E5")),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, right: 220),
                child: Text(
                  'Order Summary',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: Text('Course total'),
                trailing: Text('2247.00'),
              ),
              ListTile(
                title: Text('Product price'),
                trailing: Text('678.00'),
              ),
              ListTile(
                title: Text('subtotal'),
                trailing: Text('2247.00'),
              ),
              ListTile(
                title: Text('promo discount'),
                trailing: Text('2247.00'),
              ),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color(int.parse("0xffE5E5E5")),
                ),
              ),
              Container(
                child: ListTile(
                  title: Text(
                    'Amount Payble',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    '2247.00',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
                child: Container(
                  color: Color(int.parse("0xffE5E5E5")),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    child: Text(
                      'Your Savings : ',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '₹',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Text(
                      '238.00',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              InkWell(
                child: Container(
                    color: Color(int.parse("0xffFCB001")),
                    margin: EdgeInsets.all(4.0),
                    width: 328,
                    height: 45,
                    child: Center(
                        child: Text('Place Your Order and pay',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)))),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
