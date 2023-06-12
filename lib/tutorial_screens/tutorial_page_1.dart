import 'package:flutter/material.dart';

class tutorial_page_1 extends StatefulWidget {
  const tutorial_page_1({Key? key}) : super(key: key);

  @override
  State<tutorial_page_1> createState() => _tutorial_page_1State();
}

class _tutorial_page_1State extends State<tutorial_page_1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(child: Text('Welcome to 1')),
    );
  }
}
