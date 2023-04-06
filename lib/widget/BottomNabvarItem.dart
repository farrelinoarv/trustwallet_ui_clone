import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';


class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({
    super.key,
    required this.isActive,
    required this.itemName,
    required this.icon,
  });

  final bool isActive;
  final String itemName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(80),
      width: getProportionateScreenWidth(80),
      // color: Colors.amber,
      child: Column(
        children: [
          Icon(
            icon,
            color: isActive ? Color(0xff3375BB) : Colors.grey,
            size: getProportionateScreenHeight(40),
          ),
          Text(
            itemName,
            style: TextStyle(
                color: isActive ? Color(0xff3375BB) : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.circle,
            color: isActive ? Color(0xff3375BB) : Colors.white,
            size: getProportionateScreenHeight(5),
          ),
        ],
      ),
    );
  }
}
