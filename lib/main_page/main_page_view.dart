// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trustwallet_clone/main_page/responsive.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //inisialisasi ukuran layar
    SizeConfig().init(context);
    //inisialisasi ukuran lebar layar
    final width = SizeConfig.screenWidth;
    //inisialisasi ukuran tinggi layar
    final height = SizeConfig.screenHeight;
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                      Icons.notification_important_rounded,
                      color: Colors.black,
                      size: getProportionateScreenHeight(30),
                    ),
                    Text(
                      "\$0,00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenHeight(30),
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
                    fontSize: getProportionateScreenHeight(15),
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
                                fontSize: getProportionateScreenHeight(15),
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
                                fontSize: getProportionateScreenHeight(15),
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
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                ListCrypto(
                  image: 'assets/bnb.png',
                  nama: 'BNB',
                  namakanan: '0.5 BNB',
                  uangkiri: '\$398',
                  increment: '+8.14%',
                  uangkanan: '\$195.86',
                ),
                ListCrypto(
                  image: 'assets/banana.png',
                  nama: 'BNB',
                  namakanan: '1,987.5 BANANA',
                  uangkiri: '\$1.98',
                  increment: '+3.4%',
                  uangkanan: '\$3,865.86',
                ),
                ListCrypto(
                  image: 'assets/jupiter.png',
                  nama: 'Jupiter',
                  namakanan: '7.5 JUP',
                  uangkiri: '\$4.98',
                  increment: '-43.4%',
                  uangkanan: '\$38.86',
                ),
                ListCrypto(
                  image: 'assets/eth.png',
                  nama: 'Ethereum',
                  namakanan: '1.5 ETH',
                  uangkiri: '\$1.98',
                  increment: '+0.2%',
                  uangkanan: '\$238,865.86',
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                  height: getProportionateScreenHeight(90),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Color(0xff3375BB),
                              size: getProportionateScreenHeight(40),
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: Color(0xff3375BB),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.circle,
                              color: Color(0xff3375BB),
                              size: getProportionateScreenHeight(5),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Icon(
                              Icons.swap_calls_outlined,
                              color: Colors.grey,
                              size: getProportionateScreenHeight(40),
                            ),
                            Text(
                              'Trade',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Icon(
                              Icons.menu_book,
                              color: Colors.grey,
                              size: getProportionateScreenHeight(40),
                            ),
                            Text(
                              'DApps',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: getProportionateScreenHeight(40),
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
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

class IconNavbar extends StatelessWidget {
  final Icon icon;
  final String label;

  const IconNavbar({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: getProportionateScreenHeight(45),
            height: getProportionateScreenHeight(45),
            child: icon,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(getProportionateScreenHeight(22.5)),
              color: Color(0xff3375BB),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text(
            label,
            style: TextStyle(
              color: Color(0xff3375BB),
              fontSize: getProportionateScreenHeight(13),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
