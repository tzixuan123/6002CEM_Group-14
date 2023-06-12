import 'package:flutter/material.dart';

class tutorial_page_3 extends StatefulWidget {
  const tutorial_page_3({Key? key}) : super(key: key);

  @override
  State<tutorial_page_3> createState() => _tutorial_page_3State();
}

class _tutorial_page_3State extends State<tutorial_page_3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent[100],
      child: Center(child: Text('Welcome to 3')),
    );
  }
}