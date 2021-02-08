import 'package:flutter/material.dart';
import '../addproduct/paymentsuccess.dart';

class Paymentsummary extends StatefulWidget {
  @override
  _PaymentsummaryState createState() => _PaymentsummaryState();
}

// Alert page for payment
class _PaymentsummaryState extends State<Paymentsummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        children: <Widget>[
          InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 290, top: 10),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Paymentsuccess()));
              }),
          Container(
            margin: EdgeInsets.only(top: 10, right: 110),
            child: Text(
              'Payment Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          ListTile(
            leading: Text('Course total'),
            title: Container(
              margin: EdgeInsets.only(left: 125),
              child: Text(
                '₹',
              ),
            ),
            trailing: Text('2247.00'),
          ),
          ListTile(
            title: Container(
              margin: EdgeInsets.only(left: 125),
              child: Text(
                '₹',
              ),
            ),
            leading: Text('Product price'),
            trailing: Text('678.00'),
          ),
          ListTile(
            title: Container(
              margin: EdgeInsets.only(left: 155),
              child: Text(
                '₹',
              ),
            ),
            leading: Text('subtotal'),
            trailing: Text('2247.00'),
          ),
          ListTile(
            title: Container(
              margin: EdgeInsets.only(left: 105),
              child: Text(
                '₹',
              ),
            ),
            leading: Text('promo discount'),
            trailing: Text('2247.00'),
          ),
          ListTile(
            title: Container(
              margin: EdgeInsets.only(left: 105),
              child: Text(
                '₹',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            leading: Text(
              'Amount Payble',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              '2247.00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
