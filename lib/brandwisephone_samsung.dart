import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import 'firstpage.dart';

class BrandWisePhoneSamsung extends StatelessWidget {
  const BrandWisePhoneSamsung({Key? key}) : super(key: key);

  get onLikeButtonTapped => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.tealAccent.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              //App Bar
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: 35,
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));

                        },
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("XE",textAlign: TextAlign.center,style: TextStyle(fontSize: 25)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 40,
                        width: 35,
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Brand Logo
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/samsung/samsung-logo-png-1300.png",height: 40,width: 150,),
              ),

              //Mobiles

              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 7),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/s22.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy S22 \nGreen,8GB, 128GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 52,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/fold.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy Z Fold3 5G\nPhantom Silver,12GB,256GB",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,52,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/s22ultra.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy S22 Ultra 5G\nBurgundy, 12GB, 256GB",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,09,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/s20fe.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy S20 FE 5G\n(Cloud Navy,8GB RAM,128GB Storage) ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 52,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 7),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/s22.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy S22 \nGreen,8GB, 128GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 52,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 4,
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/samsung/fold.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Samsung Galaxy Z Fold3 5G\nPhantom Silver,12GB,256GB",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,52,999/-  ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding: EdgeInsets.all(5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                LikeButton(
                                  padding:
                                  EdgeInsets.only(top: 5,left: 2),
                                  size: 20,
                                  bubblesColor: BubblesColor(
                                      dotPrimaryColor: Colors.red,
                                      dotSecondaryColor: Colors.red),
                                  onTap: onLikeButtonTapped,
                                ),
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
