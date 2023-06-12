import 'package:flutter/material.dart';

class tutorial_page_2 extends StatefulWidget {
  const tutorial_page_2({Key? key}) : super(key: key);

  @override
  State<tutorial_page_2> createState() => _tutorial_page_2State();
}

class _tutorial_page_2State extends State<tutorial_page_2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent[100],
      child: Center(child: Text('Welcome to 2')),
    );
  }
}