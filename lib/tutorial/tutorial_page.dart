import 'package:flutter/material.dart';
import 'package:recipe_app/tutorial/tutorial_page_1.dart';

class tutorial_page extends StatelessWidget {
  const tutorial_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,

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
                "https://cdn.dribbble.com/userupload/5509815/file/original-f3ac92426bc61e1c87bcb5ac8c7a5516.gif",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50, left: 40, top: 40, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
              )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discover the best \norganic recipe. ",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Step 1: Find Ingredient for your recipe",
                    style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                                context,
                               MaterialPageRoute(
                                 builder: (context) => const tutorial_page_1(),
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
