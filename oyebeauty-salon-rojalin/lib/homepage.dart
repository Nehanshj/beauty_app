import 'package:flutter/material.dart';
import 'package:beauty_app/bottomnavigationbar.dart';
//import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

