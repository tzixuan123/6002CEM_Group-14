import 'package:flutter/material.dart';

// LogoWidget method - Link to the SignIn_Screen- for the image
Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    // color: Colors.purple,
  );
}

// For Password and email login
TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller, // to access its text for whatever changes we did

    // if the text is Password Type it will up score the text
    // if its not password text it will enable the suggestion.
    obscureText: isPasswordType,

    // Enable suggestion for (if not password Type)
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,

    // The text is white and the textstyle
    cursorColor: Colors.white,

    // This input decoration is the icon shown at the textField
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),

      // Label text styling is the text field shown in the Box ( Enter Username)
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),

      //border outline is circle that shown in the box
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),

    // This is the keyboard type
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

// Sign Up $ Sign Up Button
Container signInSignUpButton(
    // Function onTap is a Callback function
    BuildContext context, bool isLogin, Function onTap) {

  // wrapped it inside a container
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    // Circular radius for box
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      // Tab function
      onPressed: () {
        onTap();
      },
      child: Text(

        // Log In and Sign Up  button text
        isLogin ? 'LOG IN' : 'SIGN UP',

        // Text Styling
        style: const TextStyle(
            color: Colors.black87, fontSize: 16, fontStyle: FontStyle.italic),
      ),
      style: ButtonStyle(
        //Background color
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {

              // The button is white, when we click on it then it will be yellow
              return Colors.yellow;
            }
            return Colors.white;
          }),
          //Shape of the button will be rounded circular 30
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}
