

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/Recipe.dart';
import 'package:recipe_app/screens/signin_screen.dart';
import 'package:recipe_app/screens/tutorial_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: false,
        // Icon At Appbar
        //title: Text ('Recipe HomePage'),

        // Logo - Image View
        //title: const Image(
        //  image: AssetImage("assets/images/cooking.png"),
        //  width: 50,
        // ),
        centerTitle: true,
        actions: [
          // Log-out Button
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/homepage_icon.png",
                      scale: 1.2,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Center(
                    child: Text(
                      'Epicook',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  //const Text(
                   // 'SERVICES',
                  //  style: TextStyle(
                  //    fontStyle: FontStyle.italic,
                   //   fontSize: 20,
                  //    fontWeight: FontWeight.bold,
                  //  ),
                 // ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardmenu(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const recipe_details(),
                            ),
                          );
                        },
                        title: 'Recipe',
                        icon: "assets/images/recipe.png",
                        color: Colors.greenAccent,
                        fontColor: Colors.black,
                      ),
                      _cardmenu(
                        //onTap: () {
                        // Navigator.push(
                        //  context,
                        // MaterialPageRoute(
                        //   builder: (context) => const recipe_details(),
                        // ),
                        //  );
                        //  },
                        title: 'API',
                        icon: "assets/images/api.png",
                        color: Colors.black,
                        fontColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardmenu(
                        //onTap: () {
                        // Navigator.push(
                        //  context,
                        // MaterialPageRoute(
                        //   builder: (context) => const recipe_details(),
                        // ),
                        //  );
                        //  },
                        title: 'Recommend Apps',
                        icon: "assets/images/apps.png",
                        color: Colors.orangeAccent,
                        fontColor: Colors.white,
                      ),
                      _cardmenu(
                          onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                           builder: (context) => const tutorial_page(),
                         ),
                          );
                          },
                        title: 'Tutorial',
                        icon: "assets/images/tutorial.png",
                        color: Colors.purple,
                        fontColor: Colors.white,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardmenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color fontColor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 36),
        width: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
