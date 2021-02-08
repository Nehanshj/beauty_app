import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

class Textform extends StatefulWidget {
  @override
  _TextformState createState() => _TextformState();
}

class _TextformState extends State<Textform> {
  final _formkey = GlobalKey<FormState>();
  String email, name, phone, course, state, city;
  List courseList = ["hair", "skin", "fitness", "nailArt"];
  List mr = ['Mr', 'Mrs'];
  List states = ['Odisha', 'bihar'];
  List cities = ['Bhubaneswar', 'Cuttack'];
  bool hidepass = true;
  // Controllers
  TextEditingController emailTextController = TextEditingController();
  TextEditingController nameTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController courseTextController = TextEditingController();
  TextEditingController stateTextController = TextEditingController();
  TextEditingController cityTextController = TextEditingController();
  @override
  // final submission form
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.black,
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                'FILL THE FORM',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.black,
          height: 40.0,
          child: Center(
            child: Text(
              'We will call you back',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            color: Color(int.parse("0xffED008C")),
            child: Container(
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          // name widget
                          Container(
                            margin: EdgeInsets.only(left: 28),
                            color: Colors.white,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  dropdownColor: Colors.grey,
                                  icon: Container(
                                      width: 30,
                                      height: 50,
                                      child: Icon(Icons.arrow_drop_down)),
                                  value: name,
                                  items: mr.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(value)),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      name = value;
                                    });
                                  }),
                            ),
                          ),
                          Container(
                            width: 235,
                            height: 50,
                            // margin: EdgeInsets.only(left: 5),
                            color: Colors.white,
                            child: TextFormField(
                              controller: nameTextController,
                              decoration: InputDecoration(
                                  hintText: "Name",
                                  focusColor: Colors.black,
                                  border: InputBorder.none),
                              onSaved: (input) => name = input,
                            ),
                          )
                        ],
                      ),
                    ),
                    // Email
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 28.0, right: 28.0),
                      child: Material(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            controller: emailTextController,
                            decoration: InputDecoration(
                                hintText: 'Email', border: InputBorder.none),
                            onSaved: (input) => email = input,
                            validator: (value) {
                              if (value.isEmpty) {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(value))
                                  return "Please provid valid email id";
                                else
                                  return null;
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    // mobile number
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 28.0, right: 28.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: TextFormField(
                            controller: phoneTextController,
                            decoration: InputDecoration(
                                hintText: "Mobile No.",
                                focusColor: Colors.black,
                                border: InputBorder.none),
                            onSaved: (input) => phone = input,
                          ),
                        ),
                      ),
                    ),
                    // Courses
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 28.0, right: 28.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  hint: Text('Select Course Interested in'),
                                  isExpanded: true,
                                  dropdownColor: Colors.grey,
                                  icon: Container(
                                      color: Colors.black,
                                      width: 40,
                                      height: 50,
                                      child: Icon(Icons.arrow_drop_down)),
                                  value: course,
                                  items: courseList.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      course = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // State
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 28.0, right: 28.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  hint: Text('Select State'),
                                  isExpanded: true,
                                  dropdownColor: Colors.grey,
                                  icon: Container(
                                      color: Colors.black,
                                      width: 40,
                                      height: 50,
                                      child: Icon(Icons.arrow_drop_down)),
                                  value: state,
                                  items: states.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      state = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Location
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 28.0, right: 28.0),
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                  hint: Text('Select City/Locality'),
                                  isExpanded: true,
                                  dropdownColor: Colors.grey,
                                  icon: Container(
                                      color: Colors.black,
                                      width: 40,
                                      height: 50,
                                      child: Icon(Icons.arrow_drop_down)),
                                  value: city,
                                  items: cities.map((value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      city = value;
                                    });
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 28.0, right: 28.0),
                      child: Container(
                        color: Colors.black26,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Text(
                                'SUBMIT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 102.0),
                              child: Container(
                                height: 50,
                                width: 40,
                                color: Colors.black,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Image
                    Container(
                      margin: EdgeInsets.only(left: 35),
                      child: Image.asset('images/Group 439 1.png'),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
