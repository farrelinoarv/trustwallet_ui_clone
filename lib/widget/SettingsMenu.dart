import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class SettingsMenu extends StatelessWidget {
  final IconData iconData;
  final String nama;

  const SettingsMenu({
    super.key,
    required this.iconData,
    required this.nama,
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
              Icon(iconData),
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
