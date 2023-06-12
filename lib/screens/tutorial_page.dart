import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_screen.dart';
import 'package:recipe_app/tutorial_screens/tutorial_page_1.dart';
import 'package:recipe_app/tutorial_screens/tutorial_page_2.dart';
import 'package:recipe_app/tutorial_screens/tutorial_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class tutorial_page extends StatelessWidget {
  const tutorial_page({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // controller to keep track of which page we're on
    PageController _controller = PageController();

    
    return Scaffold(
        body: Stack(
      children: [
        // page view
        PageView(
          controller: _controller,

          children: [
            // Link to tutorial_page folders
            tutorial_page_1(),
            tutorial_page_2(),
            tutorial_page_3(),
          ],
        ),
        Container(
          //set the indictor dot to 0.75 bottom
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // next
              GestureDetector(

                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Text('next'),
              ),

              // dot indicator
              SmoothPageIndicator(controller: _controller, count: 3),

              // done
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context){
                            return HomeScreen();
                      },
                      ),
                  );
                },
                child: Text('Done'),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}


