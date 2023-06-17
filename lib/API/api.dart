import 'package:flutter/material.dart';
import 'package:recipe_app/views/home.dart';

class hom extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text("EpiCook"),
      centerTitle: true,
    ),
      body: Center(


        child: ElevatedButton(
          child: const Text('Go to Search'),
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
