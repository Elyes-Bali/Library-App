import 'package:flutter/material.dart';
import 'package:library_app/consttants.dart';
import 'package:library_app/screens/details_screen.dart';
import 'package:library_app/widgets/CategoriesWidget.dart';
import 'package:library_app/widgets/HomeAppBar.dart';
import 'package:library_app/widgets/book_rating.dart';
import 'package:library_app/widgets/reading_card_list.dart';
import 'package:library_app/widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HomeAppBar(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: [
                  //Search Widget
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here ...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: kLightBlackColor,
                      )
                    ]),
                  ),

                  //Categories
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                  ),

                  //Categories Widget
                  CategoriesWidget(),

                  //Items

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: size.height * .03),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: RichText(
                            text: TextSpan(
                              style: Theme.of(context).textTheme.displaySmall,
                              children: [
                                TextSpan(text: "What are you reading"),
                                TextSpan(
                                  text: " today?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              ReadingListCard(
                                image: "assets/images/book-1.png",
                                title: "Crushing & Influence",
                                auth: "Gray Venchuk",
                                rating: 4.8,
                                pressDetails: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return DetailsScreen();
                                      },
                                    ),
                                  );
                                },
                              ),
                              ReadingListCard(
                                image: "assets/images/book-2.png",
                                title: "Top 10 Business Hacks",
                                auth: "Herman Joel",
                                rating: 4.5,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  style:
                                      Theme.of(context).textTheme.displaySmall,
                                  children: [
                                    TextSpan(text: "Best of the "),
                                    TextSpan(
                                        text: "day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              bestOfTheDayCard(size, context),
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.titleLarge,
                                  children: [
                                    TextSpan(text: "Continue "),
                                    TextSpan(
                                      text: "reading...",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 80,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(38.5),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 33,
                                      color: Color(0xFFD3D3D3).withOpacity(.84),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(38.5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, right: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      "Crushing & Influence",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Gary Venchuk",
                                                      style: TextStyle(
                                                        color: kLightBlackColor,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Text(
                                                        "Chapter 7 of 10",
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                kLightBlackColor),
                                                      ),
                                                    ),
                                                    SizedBox(height: 5),
                                                  ],
                                                ),
                                              ),
                                              Image.asset(
                                                "assets/images/book-1.png",
                                                width: 55,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 7,
                                        width: size.width * .65,
                                        decoration: BoxDecoration(
                                          color: kProgressIndicator,
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New York Time Best For 11th March 2022",
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "How to Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was healthy and everyone wanted to win the game of the best and people...,",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
