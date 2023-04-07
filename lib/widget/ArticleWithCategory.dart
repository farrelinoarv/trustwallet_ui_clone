import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class Article extends StatelessWidget {
  final String imagesrc;
  final String title;
  final String subtitle;
  final String category;
  final bool withCategory;

  const Article({
    super.key,
    required this.imagesrc,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.withCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: getProportionateScreenHeight(12.5),
          bottom: getProportionateScreenHeight(12.5)),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenHeight(70),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(15)),
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(15)),
              child: Image.asset(
                imagesrc,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          Container(
            height: getProportionateScreenHeight(70),
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                  ),
                ),
                if (withCategory)
                  Container(
                    padding: EdgeInsets.all(
                      getProportionateScreenWidth(5),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(5))),
                    child: Text(
                      category,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(10),
                          color: Colors.white),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
