import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/IconOption.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(15),
          right: getProportionateScreenHeight(15),
          left: getProportionateScreenHeight(15),
          bottom: getProportionateScreenHeight(0)),
      height: getProportionateScreenHeight(300),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: getProportionateScreenHeight(0.5),
          ),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: getProportionateScreenHeight(30),
              ),
              Text(
                "\$0,00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(30),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
                size: getProportionateScreenHeight(30),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            "Main Wallet 1",
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(35),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconNavbar(
                icon: Icon(
                  Icons.upload_rounded,
                  color: Colors.white,
                  size: getProportionateScreenHeight(28),
                ),
                label: "Send",
              ),
              IconNavbar(
                icon: Icon(
                  Icons.download_rounded,
                  color: Colors.white,
                  size: getProportionateScreenHeight(28),
                ),
                label: "Receive",
              ),
              IconNavbar(
                icon: Icon(
                  Icons.wallet,
                  color: Colors.white,
                  size: getProportionateScreenHeight(28),
                ),
                label: "Buy",
              ),
              IconNavbar(
                icon: Icon(
                  Icons.swap_horiz_outlined,
                  color: Colors.white,
                  size: getProportionateScreenHeight(28),
                ),
                label: "Swap",
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Tokens",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.bold,
                          color: Color(
                            0xff3375BB,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Container(
                        height: getProportionateScreenHeight(5),
                        width: getProportionateScreenWidth(130),
                        decoration: BoxDecoration(
                            color: Color(0xff3375BB),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenHeight(10))),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "NFTs",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Container(
                        height: getProportionateScreenHeight(5),
                        width: getProportionateScreenWidth(130),
                        decoration: BoxDecoration(
                            color: Color(0xffffff),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenHeight(10))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
