import 'package:flutter/material.dart';
import 'package:zippy/presentation/pages/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zippy Capital',
      theme: ThemeData(

      ),
      home: HomeScreen(),
    );
  }
}
