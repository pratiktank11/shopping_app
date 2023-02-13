import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: ImageSlideshow(
          height: 250,
          indicatorBackgroundColor: Colors.teal.shade100,
          indicatorColor: Colors.teal,
          indicatorRadius: 5,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.asset("assets/images/14pro/1.jpg"),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.asset("assets/images/14pro/2.jpg"),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.asset("assets/images/14pro/3.jpg"),
            ),

            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.asset("assets/images/14pro/4.jpg"),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.asset("assets/images/14pro/5.jpg"),
            ),


          ]
          ),
    );
  }

}