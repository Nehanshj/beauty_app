import 'package:beauty_app/screens/bthome.dart';
import 'package:beauty_app/screens/btprofile.dart';
import 'package:beauty_app/screens/btsearch.dart';
import 'package:beauty_app/screens/btsetting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() =>
      _BottomNavBarState();
}

class _BottomNavBarState
    extends State<BottomNavBar> {
  var currentTab = [
    Home(),
    Profile(),
    Settings(),
    Search(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person,color: Colors.black,),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.black,),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}


class BottomNavigationBarProvider with ChangeNotifier{

  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }
}
