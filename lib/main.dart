import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:loction/location.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Demo',
      home: LocationScreen(),
    );
  }
}
