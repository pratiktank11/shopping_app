import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import 'brandwisephone_samsung.dart';
import 'brandwisephones_apple.dart';
import 'details.dart';

class FirstPage extends StatelessWidget {
  get onLikeButtonTapped => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.tealAccent.shade100,
          child: Column(
            children: [

              //App Bar
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 40,
                        width: 35,
                        child: Icon(
                          Icons.dehaze_outlined,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 3),
                        child: Text("XE",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25)),
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

              //Our Products and Sorted By
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Our Product",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      "Sort by",
                      style: TextStyle(color: Colors.black38),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child:
                          Icon(Icons.expand_more_outlined, color: Colors.black38),
                    )
                  ],
                ),
              ),

              //Mobile Brands
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0.5,
                              color: Colors.black26,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Image(
                                image: AssetImage("assets/images/14pro.jpeg"),
                                height: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 2, bottom: 3),
                              child: Image(
                                image: AssetImage("assets/images/iphone.png"),
                                width: 65,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BrandWisePhonesApple()));

                      },
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0.5,
                              color: Colors.black26,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: Image(
                                image: AssetImage("assets/images/s22_mini.jpg"),
                                height: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 2, bottom: 1),
                              child: Image(
                                image: AssetImage("assets/images/samsung.png"),
                                width: 65,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BrandWisePhoneSamsung()));

                      },
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0.5,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image(
                              image: AssetImage("assets/images/vivoPhone.png"),
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4, bottom: 3),
                            child: Image(
                              image: AssetImage("assets/images/vivo.png"),
                              width: 65,
                              height: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0.5,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image(
                              image: AssetImage("assets/images/miPhone.jpg"),
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 2,
                            ),
                            child: Image(
                              image: AssetImage("assets/images/mi.png"),
                              width: 65,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0.5,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Image(
                              image: AssetImage("assets/images/oppoPhone.png"),
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2, right: 2),
                            child: Image(
                              image: AssetImage("assets/images/oppo.png"),
                              width: 65,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0.5,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Image(
                              image: AssetImage("assets/images/realmePhone.png"),
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 3, left: 5, top: 1),
                            child: Image(
                              image: AssetImage("assets/images/realme.png"),
                              width: 60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 0.5,
                            color: Colors.black26,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6),
                            child: Image(
                              image: AssetImage("assets/images/opPhone.jpg"),
                              height: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2, bottom: 1),
                            child: Image(
                              image: AssetImage("assets/images/oneplus.png"),
                              width: 65,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Mibile Details
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("40%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      child: Container(
                                        child: Image.asset(
                                            "assets/images/14promax.jpg"),
                                        height: 150,
                                      ),
                                        // Within the `FirstRoute` widget
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Details()));

                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Iphone 14 Pro Max",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 1,89,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "512 GB / Black",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("20%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset("assets/images/s22.jpg"),
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Samsung S22 Ultra",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 1,49,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "512 GB / White",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("05%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/vivo_main.jpg"),
                                      height: 120,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3.0, top: 20),
                                      child: Text("Vivo X80+",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 49,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "128 GB / Black",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("15%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/op10pro.jpg"),
                                      height: 120,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 3.0, top: 20),
                                      child: Text("OnePlus 10 Pro",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 65,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "256 GB / Green",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("40%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/mi12pro.jpg"),
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Xiaomi 12 Pro",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 55,999",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "256 GB / Couture Blue",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("30%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/realmeNarzo.jpg"),
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("realme narzo 50",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 17,999",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "128 GB / Hyper Black",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("50%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/opporeno.jpg"),
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Oppo Reno 6 Pro",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 37,499",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "256 GB / Couture Blue",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5, left: 10),
                              child: Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      blurRadius: 4,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 15),
                                          child: Card(
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Text("15%",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            color: Colors.cyanAccent,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          height: 5,
                                        )),
                                        LikeButton(
                                          padding:
                                              EdgeInsets.only(right: 15, top: 5),
                                          size: 20,
                                          bubblesColor: BubblesColor(
                                              dotPrimaryColor: Colors.red,
                                              dotSecondaryColor: Colors.red),
                                          onTap: onLikeButtonTapped,
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Image.asset("assets/images/s20.jpg"),
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Samsung Galaxy S20 FE",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "INR 34,990",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 15,
                                            color: Colors.yellow),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "128 GB / Cloud Navy",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
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
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),

              //BottomNavigationBar
              BottomNavigationBar(
                iconSize: 20,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined, color: Colors.black),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_border, color: Colors.black),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_shopping_cart, color: Colors.black),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list_alt_rounded, color: Colors.black),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_outlined,
                          color: Colors.black),
                      label: ""),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
