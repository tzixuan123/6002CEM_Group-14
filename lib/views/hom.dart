import 'package:flutter/material.dart';
import 'package:untitled3/views/home.dart';

class hom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text("Title"),
      centerTitle: true,
    ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
            );
        },
      ),
      ),
    );

  }
}
