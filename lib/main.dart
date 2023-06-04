import 'package:flutter/material.dart';
import 'package:untitled3/views/hom.dart';
import 'package:untitled3/views/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recipe',
      debugShowCheckedModeBanner: false,
      home: hom(),
    );
  }
}

