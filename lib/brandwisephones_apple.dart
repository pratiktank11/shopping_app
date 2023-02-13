import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:shopping_app/details.dart';
import 'firstpage.dart';

class BrandWisePhonesApple extends StatelessWidget{
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
                child: Image.asset("assets/images/applelogo.png",height: 40,width: 40,),
              ),

              //Mobiles

              InkWell(
                child: Padding(
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
                            child: Image.asset("assets/images/14pro.jpeg",),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(child: Text("Apple iPhone 14 Pro \n256GB Space Black",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                              Container(child: Text("INR 1,39,900/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));

                },
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
                          child: Image.asset("assets/images/14promax2.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 14 Pro \nMax 1TB Gold",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,89,900/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange)),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/14plus.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 14 Plus \n128GB Blue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,01,000/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/13.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 13 \n512 GB Green",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 87,999/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange)),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/13mini.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 13 Mini \n256GB Blue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 95,999/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange)),margin:EdgeInsets.all(5) ),
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
                padding: EdgeInsets.only(top: 40,bottom: 40),
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
                          child: Image.asset("assets/images/applese.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone SE \n64 GB Midnight",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 55,999/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/14pro.jpeg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 14 Pro \n256GB Space Black",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,39,900/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/14promax2.jpg",),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 14 Pro \nMax 1TB Gold",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,89,900/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange)),margin:EdgeInsets.all(5) ),
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
                        margin: EdgeInsets.only(left: 10),
                        height: 150,
                        child: Card(
                          child: Image.asset("assets/images/14plus.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(child: Text("Apple iPhone 14 Plus \n128GB Blue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),margin:EdgeInsets.all(5) ),
                            Container(child: Text("INR 1,01,000/-  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.deepOrange),),margin:EdgeInsets.all(5) ),
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



            ],
          ),
        ),
      ),
    );
  }

}