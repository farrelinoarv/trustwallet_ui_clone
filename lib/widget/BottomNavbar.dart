import 'package:flutter/material.dart';
import 'package:trustwallet_clone/main_page/responsive.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(10)),
            height: getProportionateScreenHeight(90),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color(0xff3375BB),
                        size: getProportionateScreenHeight(40),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Color(0xff3375BB),
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.circle,
                        color: Color(0xff3375BB),
                        size: getProportionateScreenHeight(5),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Icon(
                        Icons.swap_calls_outlined,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(40),
                      ),
                      Text(
                        'Trade',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Icon(
                        Icons.menu_book,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(40),
                      ),
                      Text(
                        'DApps',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(40),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}