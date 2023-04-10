import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class Defi extends StatelessWidget {
  final String imgsrc;
  final String nama;
  final String sc;

  const Defi({
    super.key,
    required this.imgsrc,
    required this.nama,
    required this.sc,
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
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            // color: Colors.amber,
            child: Image.asset(imgsrc),
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          Expanded(
            child: Container(
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    maxLines: null,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Row(
                    children: [
                      Expanded(
                          child: Container(child: Text(sc, maxLines: null))),
                      SizedBox(width: getProportionateScreenWidth(10)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
