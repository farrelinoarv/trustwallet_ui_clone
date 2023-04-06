import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class IconNavbar extends StatelessWidget {
  final Icon icon;
  final String label;

  const IconNavbar({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: getProportionateScreenHeight(45),
            height: getProportionateScreenHeight(45),
            child: icon,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(22.5)),
              color: Color(0xff3375BB),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            label,
            style: TextStyle(
              color: Color(0xff3375BB),
              fontSize: getProportionateScreenHeight(13),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}