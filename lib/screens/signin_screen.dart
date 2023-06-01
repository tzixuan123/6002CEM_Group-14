import 'package:flutter/material.dart';
import 'package:recipe_app/reusable_widgets/reusable_widget.dart';
import 'package:recipe_app/utills/color_utills.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  // This 2 is for the declaring for the password and email
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        // This is for the width and height of the MediaQuery(context)
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("C82893"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),

        // SingleScrollView is for the logo of the login & signup page
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(

              // The icons height will be divide by 0.2 as you see in the Ul
              // The 20 is the padding is up to you
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                // logoWidget has been declared below.
                logoWidget("assets/images/Food icon.png"),

                // Display the Email and Password Textfield in the login page in Controller.
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _emailTextController),
              ],

            ),
          ),
        ),
      ),
    );
  }

}
