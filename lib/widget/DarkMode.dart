import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/Switch.dart';

class DarkMode extends StatelessWidget {
  final IconData iconData;
  final String nama;

  const DarkMode({
    super.key,
    required this.iconData,
    required this.nama,
  });

  @override
  Widget build(BuildContext context) {
    bool switchValue = false;
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
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SwitchButton(
                        value: switchValue,
                        onChanged: (newvalue) {
                          switchValue = newvalue;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
