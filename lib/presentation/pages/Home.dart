import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zippy/constants/Color.dart';
import 'package:zippy/presentation/pages/LoanContract.dart';
import 'Dashboard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _myPages = <Widget>[
    Dashboard(),
    Text(''),
    Loan(),
    Text(''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.notifications, color: primaryColor,)
        ],
        leading: Icon(Icons.menu, color: primaryColor,),),
      body: SafeArea(child: _myPages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          unselectedItemColor: secondaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 23,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.recycle,size: 23,),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.seedling, size: 23,),
              label: 'Loan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,size: 23,),
              label: 'Profile',
            ),
          ]),
    );
  }
}
