import 'package:flutter/material.dart';

class GasRefill extends StatefulWidget {
  @override
  _GasRefillState createState() => _GasRefillState();
}

class _GasRefillState extends State<GasRefill> {
  @override
  Widget build(BuildContext context) {
    // The enquiry screen
    return Column(
      children: <Widget>[
        Container(
          height: 40,
          color: Colors.black,
          width: double.infinity,
          child: InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 290),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ),
        // Inclusions and exclusions
        Container(
          // inclusions
          margin: EdgeInsets.all(4),
          child: Card(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Text(
                    'Inclusions',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text('Prices shown are for labour charges only'),
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            'Consumables and parts (if used) will be charged extra')),
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                          ' Warranty on consumables and parts will be as per manufacturer only'),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                          ' Housejoy provides a 30 day warranty on the service provided'),
                    ),
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                          ' If any repair work is required, a quote will be given before proceeding'),
                    ),
                  ],
                )),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
        // exclusions3
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Card(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Text(
                    'Exclusions',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 60),
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            'We do not provide any warranty on appliances that are older than 4 years at the time of service. Also, Housejoy service provider might deny the service if the appliance is in old or un-repairable condition')),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            ' Housejoy does not provide material bills. It will be separately provided by the technician')),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            ' Housejoy does not provide material bills. It will be separately provided by the technician')),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            ' Housejoy does not provide material bills. It will be separately provided by the technician')),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                        child: Text(
                            ' Housejoy does not provide material bills. It will be separately provided by the technician')),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black38,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: Text(
                            ' Housejoy does not provide material bills. It will be separately provided by the technician')),
                  ],
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
