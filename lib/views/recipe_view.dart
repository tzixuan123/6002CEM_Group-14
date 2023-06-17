import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';


class RecipeView extends StatefulWidget {

  final String postUrl;
  RecipeView({required this.postUrl});

  @override
  _RecipeViewState createState() => _RecipeViewState();
}

class _RecipeViewState extends State<RecipeView> {


  final Completer<WebViewController> _controller = Completer<WebViewController>();
  late String finalUrl;
  @override
  void initState() {

    if(widget.postUrl.contains("http://")){
      finalUrl = widget.postUrl.replaceAll(("http://"), "https://");
    }else{
      finalUrl = widget.postUrl;

    }
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,

        child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: Platform.isIOS? 60: 30, right: 24,left: 24,bottom: 16),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: kIsWeb ? MainAxisAlignment.start :
              MainAxisAlignment .center,
              children: <Widget>[
                Text('Epi C',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),),

                Text("ook", style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                ),)

              ],
            ),
          ),
          Expanded(
            child: Container(height: MediaQuery.of(context).size.height - (Platform.isIOS ? 104 : 30),
              width: MediaQuery.of(context).size.width,
              child: WebView(
                onPageFinished: (val){
                  print(val);
                },
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: finalUrl,
                onWebViewCreated: (WebViewController webViewController) {
                  setState(() {
                    _controller.complete(webViewController);
                  });
                },


              ),
            ),
          )
        ],
      ),
      )
    );
  }
}
