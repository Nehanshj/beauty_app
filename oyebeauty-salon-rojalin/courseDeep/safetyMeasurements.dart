import 'package:flutter/material.dart';

class SafetyMeasurements extends StatefulWidget {
  @override
  _SafetyMeasurementsState createState() => _SafetyMeasurementsState();
}

class _SafetyMeasurementsState extends State<SafetyMeasurements> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Container(
              color: Colors.blue,
              width: 220,
              height: 20,
              // safety guidelines
              child: Text(
                'Safety Measurement',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              // mask and gloves container
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      // height: 60,
                      child: Image.asset(
                        'images/dashboardOyebeauty/face-mask 1.jpg',
                        height: 50,
                        width: 80,
                      ),
                    ),
                    Text('Use Of Mask'),
                    Text('& Gloves')
                  ],
                ),
              ),
              // W.H.O guidelines
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        // height: 60,
                        child: Image.asset(
                          'images/dashboardOyebeauty/Group 309.jpg',
                          height: 50,
                          width: 80,
                        ),
                      ),
                    ),
                    Text('Following'),
                    Text('W.H.O Guidelines')
                  ],
                ),
              ),
              // Arogya setu app
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        // height: 100,
                        child: Image.asset(
                          'images/dashboardOyebeauty/Group 311.jpg',
                          height: 50,
                          width: 80,
                        ),
                      ),
                    ),
                    Text('Safety with'),
                    Text('Arogya setu app')
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
