import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_screen.dart';


class tutorial_page_2 extends StatelessWidget {
  const tutorial_page_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
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
                "https://cdn.dribbble.com/users/276452/screenshots/11687574/media/ec7b19bef81f715e27e4b2d517b7288c.gif",
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
                    "Enjoy Your Meals",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Last Steps: ",
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
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },

                        child: Text(
                          "Completed",
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
