import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/signin_screen.dart';

void main() async {
  // Make sure the firebase is initialized before run the our application to Firebase
  // This part will makesure our Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget{
  const Splash({Key? key}) : super (key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Set the Splash screen to load 3 second before navigator to Signin Screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
    });
  }

  // Splash Screen - Setup
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          // Set the Image to Center
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Inserts image
            Image.asset("assets/images/icon_splash.png", height: 130,),
            const SizedBox(height: 30,),
            if(Platform.isAndroid)
              // Loading indicator
              const CupertinoActivityIndicator(
                radius: 20,
              )
            else
              const CircularProgressIndicator(
                color: Colors.white,
              )

          ],
        ),
      ),
    );
  }
}



