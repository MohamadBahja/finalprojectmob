import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(
        vertical:10,
        horizontal: 10,
      ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
              child: Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "itemPage");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/newpizza.png",
                            height: 120,
                            width: 150,
                          ),

                        ),
                      ),
                      Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Hot Pizza",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Tast Our Hot Pizza, We Provide Our Great Foods",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              itemBuilder: (context, _) => Icon(Icons.star,
                                color: Colors.red,

                              ) ,
                              onRatingUpdate: (index){},),
                            Text("\$10",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],),
                      ),


                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
              child: Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "BurgerPage");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/newburger.png",
                            height: 120,
                            width: 150,
                          ),

                        ),
                      ),
                      Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Hot burger",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Tast Our Hot Burger, We Provide Our Great Foods",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              itemBuilder: (context, _) => Icon(Icons.star,
                                color: Colors.red,

                              ) ,
                              onRatingUpdate: (index){},),
                            Text("\$5",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],),
                      ),


                    ]
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
              child: Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                ),
                child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "saladPage");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/newsalad.png",
                            height: 120,
                            width: 150,
                          ),

                        ),
                      ),
                      Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Frech Salad",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Tast Our New Salad, We Provide Our Great Foods",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              itemBuilder: (context, _) => Icon(Icons.star,
                                color: Colors.red,

                              ) ,
                              onRatingUpdate: (index){},),
                            Text("\$4",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],),
                      ),


                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
