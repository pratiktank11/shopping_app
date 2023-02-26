import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageScreen extends StatelessWidget{

 String im1='',im2='',im3='',im4='';
 ImageScreen(this.im1,this.im2,this.im3,this.im4);
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
              child: Image.network(im1),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.network(im2),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.network(im3),
            ),

            Padding(padding: EdgeInsets.only(bottom: 10),
              child: Image.network(im4),
            ),


          ]
          ),
    );
  }

}