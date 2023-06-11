import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // Icon At Appbar
        //title: Text ('Recipe HomePage'),

        // Logo - Image View
          title: const Image(
            image: AssetImage("assets/images/cooking.png"),
          width: 50,
        ),
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
      body: Container(
      ),
    );
  }
}
