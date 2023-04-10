import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class SettingsMenuMedsos extends StatelessWidget {
  final String nama;
  final String imgsrc;

  const SettingsMenuMedsos({
    super.key,
    required this.nama,
    required this.imgsrc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Expanded(
        child: Container(
          height: getProportionateScreenHeight(60),
          // color: Colors.amber,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imgsrc,
                height: getProportionateScreenHeight(25),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Text(
                nama,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
