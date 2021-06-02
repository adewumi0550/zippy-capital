import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5)
          )
        ],

      ),
      child:   BottomNavigationBar(
        selectedItemColor: Color(0xFF881347),
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home,size: 40,),
   label: ''
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person,size: 40,),
        label: ''
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.notifications,size: 40,),
        label: ''
    ),
    ]),
    );
  }
}
