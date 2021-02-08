import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../addproduct/delivery.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  // custom marker
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/dashboardOyebeauty/Group 46.jpg');
  }

// Marker details
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('value'),
          icon: mapMarker,
          infoWindow: InfoWindow(
              title: 'Our Expert will arrive here',
              snippet: 'Drag the pin to set'),
          position: LatLng(22.5448131, 88.3403691)));
    });
  }

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
          title: Text(
            'Add Location',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Google map implementation
              Container(
                height: 429,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  markers: _markers,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(22.5448131, 88.3403691), zoom: 15),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: <Widget>[
                    Text('Sector 38, Gurugram, Haryana, India'),
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Text(
                        'CHANGE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              // change the location
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                // enter changing details
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Flat/Building/Street"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Name"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: TextFormField(
                  decoration: InputDecoration(hintText: "Phone number"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // add the address button
              InkWell(
                child: Container(
                    color: Color(int.parse('0xffFCB001')),
                    margin: EdgeInsets.all(4.0),
                    width: 328,
                    height: 45,
                    child: Center(
                        child: Text('Add Address',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)))),
                onTap: () {
                  print('tapped');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Delivery()));
                },
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
