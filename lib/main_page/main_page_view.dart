// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trustwallet_clone/main_page/responsive.dart';
import 'package:trustwallet_clone/widget/BottomNavbar.dart';
import 'package:trustwallet_clone/widget/ContainerHomepage.dart';
import 'package:trustwallet_clone/widget/ListCrypto.dart';

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
          HomePageContainer(),
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
          BottomNavBar()
        ],
      ),
    );
  }
}