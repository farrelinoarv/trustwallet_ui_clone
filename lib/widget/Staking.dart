import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class Staking extends StatelessWidget {
  final String imgsrc;
  final String title;
  final String subtitle;
  final String percent;

  const Staking({
    super.key,
    required this.imgsrc,
    required this.title,
    required this.subtitle,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getProportionateScreenHeight(12.5),
        bottom: getProportionateScreenHeight(12.5),
      ),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            child: Image.asset(imgsrc),
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: null,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: getProportionateScreenWidth(15),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Text(subtitle)
                    ],
                  ),
                ),
                Text(percent, style: TextStyle(color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}