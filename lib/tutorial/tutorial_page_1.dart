import 'package:flutter/material.dart';
import 'package:recipe_app/tutorial/tutorial_page_2.dart';

class tutorial_page_1 extends StatelessWidget {
  const tutorial_page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.orangeAccent,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.network(
                "https://cdn.dribbble.com/users/2008861/screenshots/14293050/media/81c828595bd4135765fa3df8087dd467.gif",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(bottom: 50, left: 40, top: 40, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How to Use Essential Cooking Techniques ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Step 2: Cook foods in water at or near the boiling point",
                    style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const tutorial_page_2(),
                            ),
                          );
                        },
                        child: Text(
                          "Next Steps",
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 16,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
