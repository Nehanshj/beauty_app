import 'package:flutter/material.dart';
import '../addproduct/address.dart';
import '../addproduct/summary.dart';

class Delivery extends StatefulWidget {
  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
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
              'Address',
              style: TextStyle(color: Colors.black),
            ),
            Container(
                margin: EdgeInsets.only(left: 160),
                child: Icon(Icons.shopping_cart))
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(hintText: "Select an address"),
              ),
            ),
          ),
          // add a new address
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color(int.parse("0xff005CB1")),
                  style: BorderStyle.solid),
            ),
            margin: EdgeInsets.all(15.0),
            width: 360,
            height: 53,
            child: InkWell(
              child: Container(
                child: ListTile(
                  title: Text('Add a new address',
                      style: TextStyle(
                          color: Color(int.parse("0xff005CB1")), fontSize: 15)),
                  trailing: Icon(
                    Icons.add,
                    color: Color(int.parse("0xff005CB1")),
                    size: 33,
                  ),
                ),
              ),
              onTap: () {},
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      // name of the person
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
                      // address with phone number
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                            'Ahinsa - 2, Indirapuram, Ghaziabad, Uttar Pradesh, 201011 Phone: 8527920313'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // select the address
                InkWell(
                  child: Container(
                      color: Color(int.parse("0xffFCB001")),
                      margin: EdgeInsets.all(4.0),
                      width: 328,
                      height: 45,
                      child: Center(
                          child: Text('Select this address',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)))),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Summary()));
                  },
                ),
                Row(
                  children: <Widget>[
                    // edit button
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 40,
                      width: 84,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(child: Text('Edit')),
                    ),
                    // delete button
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 84,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: Center(child: Text('Delete')),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // another name with address and phone number
          Container(
            child: Column(
              children: <Widget>[
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
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                      'Ahinsa - 2, Indirapuram, Ghaziabad, Uttar Pradesh, 201011 Phone: 8527920313'),
                )
              ],
            ),
          ),
          InkWell(
            child: Container(
                color: Color(int.parse("0xffFCB001")),
                margin: EdgeInsets.all(4.0),
                width: 328,
                height: 45,
                child: Center(
                    child: Text('Select this address',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)))),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Summary()));
            },
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 40,
                width: 84,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Center(child: Text('Edit')),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 40,
                width: 84,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Center(child: Text('Delete')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
