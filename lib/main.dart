import 'package:flutter/material.dart';
import 'package:shopping_app/homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }}