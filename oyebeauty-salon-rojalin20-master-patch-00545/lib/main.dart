import 'package:beauty_app/bottomnavigationbar.dart';
import 'package:flutter/material.dart';
import 'package:beauty_app/homepage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavigationBarProvider()),
      ],
      child: MaterialApp(
        title: 'Beauty App',
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

