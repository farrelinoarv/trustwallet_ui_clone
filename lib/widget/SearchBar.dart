import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';

class MySearchBar extends StatefulWidget {
  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(
              fontFamily: 'poppinsregular',
              fontSize: getProportionateScreenWidth(17),
              color: Color(0xff000000),
            ),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xffDEDEDE),
                    width: getProportionateScreenWidth(1)),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(30),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.black12,
                    width: getProportionateScreenWidth(1)),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(30)),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              fillColor: Colors.black12,
              filled: true,
              hintText: 'Search or enter website url',
            ),
          ),
        ),
      ],
    );
  }
}
