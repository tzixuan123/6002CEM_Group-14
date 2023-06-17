import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class recommend_app extends StatefulWidget {
  const recommend_app({Key? key}) : super(key: key);

  @override
  State<recommend_app> createState() => _recommend_appState();
}

class _recommend_appState extends State<recommend_app> {
  CarouselController _carouselController = new CarouselController();
  int _current = 0;

  // Text, image URL, desription for displayed
  List<dynamic> _Rapps = [
    {
      'title': 'Yummly',
      'image': 'https://cdn.dribbble.com/users/1588660/screenshots/10817652/media/7bdbbc5b34da25a4a2f53c8082e9a328.jpg',
      'description': 'With the Yummly Smart Thermometer, you can make meat, poultry, or fish just the way you like it — every time. '
    },
    {
      'title': 'Tasty',
      'image': 'https://cdn.dribbble.com/userupload/4043738/file/original-1938cb3a8d8d84e59dec230042ede59f.png?compress=1&resize=1200x900',
      'description': 'Find all the newest recipes published on Tasty, the world’s largest food network.'
    },
    {
      'title': 'Pinterest',
      'image': 'https://cdn.dribbble.com/userupload/6189141/file/original-68466bbaaa29a5710862d87372e713c9.png?compress=1&resize=1200x900&vertical=center',
      'description': 'The best part of Pinterest is discovering new things and ideas from people around the world.'
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommend Apps'),
        backgroundColor: Colors.purple,
        leading: GestureDetector(

          // Icon - back
          child: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Stack(
          children: [

            // Set the image to Image.network to link
            Image.network(_Rapps[_current]['image'], fit: BoxFit.cover),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(1),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                          Colors.grey.shade50.withOpacity(0.0),
                        ]
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.7,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,

              // The slider that display on the page. (CarouselSlider)
              // The implementation in pubspec.yaml
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 500.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,

                items: _Rapps.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.network(
                                      movie['image'], fit: BoxFit.cover),
                                ),
                                SizedBox(height: 20),
                                Text(movie['title'], style:
                                TextStyle(
                                    color: Colors.orange,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                                // rating
                                SizedBox(height: 20),
                                Container(
                                  child: Text(
                                    movie['description'], style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black,
                                  ), textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20),
                                AnimatedOpacity(
                                  duration: Duration(milliseconds: 500),
                                  opacity: _current == _Rapps.indexOf(movie)
                                      ? 1.0
                                      : 0.0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.0),

                                   // Set link button to center
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,

                                      // Click button - Link to https//
                                      children: [
                                        Container(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * 0.2,
                                          child: Row(
                                            children: [
                                              Icon(Icons.play_circle_filled,
                                                color: Colors.grey.shade600,
                                                size: 20,),
                                              SizedBox(width: 5),
                                              Text('Visit-CM', style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.redAccent
                                              ),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
