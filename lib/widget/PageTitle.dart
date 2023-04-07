import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class PageTitle extends StatelessWidget {
  final String name;
  const PageTitle({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(50),
        bottom: getProportionateScreenHeight(30),
        left: getProportionateScreenWidth(30),
      ),
      child: Row(
        children: [
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenHeight(20)),
          ),
        ],
      ),
    );
  }
}
