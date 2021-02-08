import 'package:flutter/material.dart';
import '../addproduct/searchLocation.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
          // select an address
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
              onTap: () {
                NavigateTolocation();
                print('tap');
              },
            ),
          ),
        ],
      ),
    );
  }

  void NavigateTolocation() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchLocation()));
  }
}
