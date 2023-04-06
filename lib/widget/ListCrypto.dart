import 'package:flutter/material.dart';
import 'package:trustwallet_clone/main_page/responsive.dart';

class ListCrypto extends StatelessWidget {
  final String image;
  final String nama;
  final String namakanan;
  final String uangkiri;
  final String increment;
  final String uangkanan;

  const ListCrypto({
    super.key,
    required this.image,
    required this.nama,
    required this.namakanan,
    required this.uangkiri,
    required this.increment,
    required this.uangkanan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenHeight(18)),
      child: Row(
        children: [
          Container(
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(50),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          Expanded(
            child: Container(
              // color: Colors.amber,
              height: getProportionateScreenHeight(45),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(17),
                        ),
                      ),
                      Text(
                        namakanan,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenHeight(17),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Text(
                        uangkiri,
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(15),
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(10)),
                      Text(
                        increment,
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(15),
                          color: increment.startsWith('-')
                              ? Color(0xffA13939)
                              : Color(0xff219653),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        uangkanan,
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}