import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:shopping_app/imageScreen.dart';
import 'firstpage.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  get onLikeButtonTapped => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.tealAccent.shade100,
        child: Column(
          children: [

            //AppBar
            Center(
              child: Padding(
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
                        margin: EdgeInsets.only(right: 15),
                        child: Text("XE",textAlign: TextAlign.center,style: TextStyle(fontSize: 25 ),),
                      ),
                    ),
                    LikeButton(
                      padding:
                      EdgeInsets.only(right: 20),
                      size: 20,
                      bubblesColor: BubblesColor(
                          dotPrimaryColor: Colors.red,
                          dotSecondaryColor: Colors.red),
                      onTap: onLikeButtonTapped,
                    ),
                  ],
                ),
              ),
            ),

            //Discount Container

            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 30,
                width: 40,
                child: Center(child: Text("40%")),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.tealAccent.shade200,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 0.5,
                      color: Colors.black26,
                    )
                  ]
                ),
              ),
            ),

            //Details

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 250,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageScreen(),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.normal,
                      blurRadius: 4,
                      spreadRadius: 1,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 25,
                            margin: EdgeInsets.only(left: 20,top: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Apple iPhone 14 Pro Max",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          child: LikeButton(
                            padding:
                            EdgeInsets.only(right: 30),
                            size: 20,
                            bubblesColor: BubblesColor(
                                dotPrimaryColor: Colors.red,
                                dotSecondaryColor: Colors.red),
                            onTap: onLikeButtonTapped,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(child: Text("A16 Bionic chip,6-core CPU with 2 performance cores and 4 efficiency cores, 5-core GPU, 16-core Neural Engine"))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Text("variant :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal  ,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("64 GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                  ),
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black26
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("128 GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                  ),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black26
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("512 GB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                  ),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black26
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("1 TB",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                  ),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black26
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height:60),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                          color: Colors.black12
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          children: [
                            Text("Price :",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1,89,000",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25
                              )),
                            ),
                            Text("₹",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            )),
                            Expanded(child: Container()),
                            Icon(
                              Icons.add_shopping_cart_outlined,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
