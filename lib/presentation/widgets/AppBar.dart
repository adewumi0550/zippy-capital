import 'package:flutter/material.dart';
Widget appBarMenu(BuildContext context){
  return AppBar(
    backgroundColor: Colors.white,
    foregroundColor: Colors.red,
    elevation: 0.0,
    actions: <Widget>[
      Icon(Icons.notifications, color: Colors.red,)
    ],
    leading: Icon(Icons.menu, color: Colors.red,),);
}