import 'package:flutter/material.dart';
import 'package:library_app/consttants.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total :",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$3",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: kBlackColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Check out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
