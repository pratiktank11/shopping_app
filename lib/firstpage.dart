import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:http/http.dart' as http;
import 'brandwisephone_samsung.dart';
import 'brandwisephones_apple.dart';
import 'details.dart';
import 'gridViewDesign.dart';

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
              Expanded(child: Container(child:  FutureBuilder<dynamic>(builder: (context, snapshot) {
                if(snapshot.hasData){
                  return GridView.builder(
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.only(right: 5, left: 10,bottom: 10,top: 10),
                          child: Container(
                            height: 100,
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
                                          child: Text(snapshot.data![index]['Discount'].toString(),
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
                                    child: Image.network(
                                        snapshot.data![index]['Image'].toString()),
                                    height: 150,
                                  ),
                                  // Within the `FirstRoute` widget
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Details(index)));

                                  },
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(3.0),alignment: Alignment.center,
                                    child: Text(snapshot.data![index]['Name'].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text("₹ ${
                                      snapshot.data![index]['Price'].toString()}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: Colors.yellow),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      "${snapshot.data![index]['Varient'].toString()} / ${snapshot.data![index]['Colour'].toString()}",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                ),

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
              },future: getApiData())
              ))

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
Future<dynamic> getApiData() async {
  http.Response res = await http.get(Uri.parse("https://63213b2c82f8687273ae479d.mockapi.io/ShoppingApp"));
  print(jsonDecode((res.body.toString())));
  return jsonDecode((res.body.toString()));
}