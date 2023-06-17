import 'package:flutter/material.dart';

class recipe_details extends StatefulWidget {
  const recipe_details({Key? key}) : super(key: key);

  @override
  State<recipe_details> createState() => _recipe_detailsState();
}

class _recipe_detailsState extends State<recipe_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.indigo,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
