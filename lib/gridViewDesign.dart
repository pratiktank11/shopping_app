import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';

import 'details.dart';
import 'firstpage.dart';

class GridViewDesign extends StatelessWidget {
  const GridViewDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<dynamic>(builder: (context, snapshot) {
        if(snapshot.hasData){
          return GridView.builder(
              itemCount: 100,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return  Padding(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Details(0)));

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
                );
              }
          );
        }
        else {
          return Center(child: CircularProgressIndicator());
        }
      },future: getApiData()),
    );
  }
}
