import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class DiscoverSection extends StatelessWidget {
  final bool showArrow;
  final String name;
  const DiscoverSection({
    super.key,
    required this.name,
    required this.showArrow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(12.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: getProportionateScreenHeight(15),
                fontWeight: FontWeight.w600),
          ),
          if (showArrow)
            Icon(Icons.arrow_forward_ios,
                size: getProportionateScreenHeight(15)),
        ],
      ),
    );
  }
}
