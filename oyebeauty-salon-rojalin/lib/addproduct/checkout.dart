import 'package:flutter/material.dart';
import '../addproduct/paymentSummary.dart';
import '../dashboard_Oyebeauty/visibility.dart';

enum payment { paytm, phonepay, googlepay, amazonpay, id }

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  payment _site = payment.googlepay;
  bool _visiblecards = false;
  bool _visibleupi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appbar
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
                'Checkout',
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
                InkWell(
                  // Transaction through UPI with radio botton implementation
                  child: ListTile(
                      title: Text('UPI'),
                      trailing: _visibleupi
                          ? Icon(Icons.keyboard_arrow_down)
                          : Icon(Icons.keyboard_arrow_right)),
                  onTap: () {
                    setState(() {
                      _visibleupi = !_visibleupi;
                    });
                  },
                ),
                Visibility(
                    // pay through paytm radio button
                    visible: _visibleupi,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            child: Image.asset(
                                // paytm image
                                'images/dashboardOyebeauty/image 8.jpg'),
                          ),
                          title: Text('Paytm UPI'),
                          trailing: Radio(
                            value: payment.paytm,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        // Pay through phonepe
                        ListTile(
                          leading: Container(
                            child: Image.asset(
                                'images/dashboardOyebeauty/image 9.jpg'),
                          ),
                          title: Text('Phonepe UPI'),
                          trailing: Radio(
                            value: payment.phonepay,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        // pay through google pay
                        ListTile(
                          leading: Container(
                            child: Image.asset(
                                'images/dashboardOyebeauty/image 10.jpg'),
                          ),
                          title: Text('Googlepay UPI'),
                          trailing: Radio(
                            value: payment.googlepay,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        // pay through amazon pay
                        ListTile(
                          leading: Container(
                            child: Image.asset(
                                'images/dashboardOyebeauty/image 12 (Traced).jpg'),
                          ),
                          title: Text('Amazonpay UPI'),
                          trailing: Radio(
                            value: payment.amazonpay,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                        Divider(),
                        // pay through upi Id
                        ListTile(
                          leading: Container(
                            child: Image.asset(
                                'images/dashboardOyebeauty/Group 41.jpg'),
                          ),
                          title: TextFormField(
                            decoration:
                                InputDecoration(hintText: 'Enter UPI ID'),
                          ),
                          trailing: Radio(
                            value: payment.id,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                InkWell(
                  // Payment through cards
                  child: ListTile(
                      leading: Container(
                        child: Image.asset(
                            'images/dashboardOyebeauty/Group 6.jpg'),
                      ),
                      title: Text('Credit/Debit Cards'),
                      trailing: _visiblecards
                          ? Icon(Icons.keyboard_arrow_down)
                          : Icon(Icons.keyboard_arrow_right)),
                  onTap: () {
                    setState(() {
                      _visiblecards = !_visiblecards;
                    });
                  },
                ),
                Visibility(
                  // payment through ICICI credit cards
                  visible: _visiblecards,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: ListTile(
                          title: Text('ICICI Credit cards'),
                          isThreeLine: true,
                          subtitle: Text('............'),
                          trailing: Radio(
                            value: payment.id,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                        // pay through pnb debit cards
                        margin: EdgeInsets.only(left: 70),
                        child: ListTile(
                          title: Text('PNB Debit cards'),
                          isThreeLine: true,
                          subtitle: Text('............'),
                          trailing: Radio(
                            value: payment.id,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: ListTile(
                          title: Text('ICICI Credit cards'),
                          isThreeLine: true,
                          subtitle: Text('............'),
                          trailing: Radio(
                            value: payment.id,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        // pay throygh another cards
                        margin: EdgeInsets.only(left: 70),
                        child: ListTile(
                          title: Text('Another card'),
                          trailing: Radio(
                            value: payment.id,
                            groupValue: _site,
                            onChanged: (payment value) {
                              setState(() {
                                _site = value;
                              });
                            },
                          ),
                        ),
                      ),
                      // enter card number
                      Container(
                        width: 230,
                        height: 37,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Card Number'),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        // enter expiry date of cards
                        padding: const EdgeInsets.only(left: 65.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 106,
                              height: 37,
                              child: TextField(
                                decoration: InputDecoration(hintText: 'Expiry'),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 106,
                              height: 37,
                              child: TextField(
                                decoration: InputDecoration(hintText: 'cvv'),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // enter card holder name
                        width: 230,
                        height: 37,
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Card holder's name"),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      // check box implementation
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: CheckboxListTile(
                          title: Text("Save this card for future"),
                          value: true,
                          onChanged: (newValue) {},
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                  child: Container(
                    color: Color(int.parse("0xffE5E5E5")),
                  ),
                ),
                ListTile(
                    // wallet
                    leading: Container(
                      child:
                          Image.asset('images/dashboardOyebeauty/Group 5.jpg'),
                    ),
                    title: Text('Wallet'),
                    trailing: Icon(Icons.keyboard_arrow_right)),
                SizedBox(
                  height: 8,
                  child: Container(
                    color: Color(int.parse("0xffE5E5E5")),
                  ),
                ),
                ListTile(
                    leading: Container(
                      // netbanking
                      child:
                          Image.asset('images/dashboardOyebeauty/Group 7.jpg'),
                    ),
                    title: Text('Netbanking'),
                    trailing: Icon(Icons.keyboard_arrow_right)),
                // pay after service online/cash
                SizedBox(
                  height: 8,
                  child: Container(
                    color: Color(int.parse("0xffE5E5E5")),
                  ),
                ),
                ListTile(
                    leading: Container(
                      child: Image.asset(
                          'images/dashboardOyebeauty/mdi_watch_later.jpg'),
                    ),
                    title: Text('Pay after service'),
                    trailing: Icon(Icons.keyboard_arrow_right)),
                SizedBox(
                  height: 8,
                  child: Container(
                    color: Color(int.parse("0xffE5E5E5")),
                  ),
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Row(
                            children: <Widget>[
                              Text(
                                '₹',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '417',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'View',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    InkWell(
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 180, bottom: 20, top: 10),
                          height: 40,
                          width: 84,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                              child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        onTap: () {
                          alertform();
                        }),
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                      'By proceeding you accept the latest version of our T&Cs, Privacy policy and Cancellation Policy'),
                )
              ],
            ),
          ),
        ));
  }

  void alertform() {
    var alert = new AlertDialog(
        content: Container(child: Paymentsummary()),
        insetPadding:
            EdgeInsets.only(left: 10.0, bottom: 45, top: 42, right: 10.0),
        contentPadding: EdgeInsets.all(0.0));
    showDialog(context: context, builder: (_) => alert);
  }
}
