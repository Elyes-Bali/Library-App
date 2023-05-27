import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:library_app/consttants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      height: 110,
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: kBlackColor,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "BookStore",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kBlackColor,
              ),
            ),
          ),
          Spacer(flex: 10),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text(
              "1",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: kBlackColor,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "bookadd");
              },
              child: Icon(
                Icons.add,
                size: 30,
                color: kBlackColor,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "listbook");
              },
              child: Icon(
                Icons.book_sharp,
                size: 30,
                color: kBlackColor,
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeStyle: badges.BadgeStyle(
              padding: EdgeInsets.all(7),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "login");
              },
              child: Icon(
                Icons.login,
                size: 30,
                color: kBlackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
