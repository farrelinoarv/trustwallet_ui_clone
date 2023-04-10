// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/ArticleWithCategory.dart';
import 'package:trustwallet_clone/widget/BottomNavbar.dart';
import 'package:trustwallet_clone/widget/Defi.dart';
import 'package:trustwallet_clone/widget/DefiTokens.dart';
import 'package:trustwallet_clone/widget/DiscoverSection.dart';
import 'package:trustwallet_clone/widget/PageTitle.dart';
import 'package:trustwallet_clone/widget/Staking.dart';
import 'package:trustwallet_clone/widget/TrendingNewsArticle.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          PageTitle(name: 'Discover'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(30),
              ),
              child: ListView(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(0)),
                children: [
                  DiscoverSection(name: 'Tax Reports Tools', showArrow: false),
                  Article(
                    imagesrc: 'assets/coinpanda.png',
                    title: 'Coinpanda',
                    subtitle: '-20% off on tax report',
                    withCategory: true,
                    category: 'TWT Extra Discount',
                  ),
                  Article(
                    withCategory: true,
                    imagesrc: 'assets/koinly.jpeg',
                    title: 'Koinly',
                    subtitle: '-25% off on tax report',
                    category: 'TWT Extra Discount',
                  ),
                  Article(
                    withCategory: true,
                    imagesrc: 'assets/cointracker.png',
                    title: 'CoinTracker',
                    subtitle: '-20% off on tax report',
                    category: 'TWT Extra Discount',
                  ),
                  DiscoverSection(name: 'Trending News', showArrow: true),
                  TrendingNewsArticle(
                    imgsrc: 'assets/web30.jpg',
                    nama:
                        "'Japan\'s Web3 Project Team Releases White Paper to Boost Crypto Industry'",
                    sc: 'Blockchain News',
                    showCategory: false,
                    category: '',
                  ),
                  TrendingNewsArticle(
                    imgsrc: 'assets/chinese.jpeg',
                    nama: 'Chinese state Company Launched Crypto Funds',
                    sc: 'Blockchain News',
                    showCategory: true,
                    category: 'PAF',
                  ),
                  TrendingNewsArticle(
                    imgsrc: 'assets/hack.png',
                    nama: 'Sentiment Recovers Stolen Funds with Bounty',
                    sc: 'Blockchain News',
                    showCategory: true,
                    category: 'BNTY',
                  ),
                  DiscoverSection(name: 'Staking', showArrow: true),
                  Staking(
                      imgsrc: 'assets/ADA.png',
                      title: 'ADA',
                      subtitle: 'Cardano',
                      percent: 'APR 4,34%'),
                  Staking(
                      imgsrc: 'assets/DOT.png',
                      title: 'DOT',
                      subtitle: 'Polkadot',
                      percent: 'APR 15,3%'),
                  Staking(
                      imgsrc: 'assets/SOL.png',
                      title: 'SOL',
                      subtitle: 'Solana',
                      percent: 'APR 6,5%'),
                  DiscoverSection(name: 'DeFi Tokens', showArrow: true),
                  DefiTokens(
                    imgsrc: 'assets/SOL.png',
                    title: 'SOL',
                    subtitle: 'Solana',
                    percent: '-1,24%',
                    amount: '\$20,53',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/MKR.png',
                    title: 'MKR',
                    subtitle: 'Maker',
                    percent: '+2,74%',
                    amount: '\$714,83',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/AAVE.png',
                    title: 'AAVE',
                    subtitle: 'Token',
                    percent: '+2,25%',
                    amount: '\$80,8',
                  ),
                  DiscoverSection(name: 'Lending / Borrowing', showArrow: true),
                  DefiTokens(
                    imgsrc: 'assets/MKR.png',
                    title: 'MKR',
                    subtitle: 'Maker',
                    percent: '+2,74%',
                    amount: '\$714,83',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/AAVE.png',
                    title: 'AAVE',
                    subtitle: 'Token',
                    percent: '+2,25%',
                    amount: '\$80,8',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/COMP.png',
                    title: 'COMP',
                    subtitle: 'Compound',
                    percent: '-0,48%',
                    amount: '\$43,8',
                  ),
                  DiscoverSection(name: 'Smart Chain / BSC', showArrow: true),
                  DefiTokens(
                    imgsrc: 'assets/OOE.png',
                    title: 'OOE',
                    subtitle: 'OpenOcean',
                    percent: '+2,48%',
                    amount: '\$0,02',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/MDX.png',
                    title: 'MDX',
                    subtitle: 'Token',
                    percent: '+1,25%',
                    amount: '\$0,08',
                  ),
                  DefiTokens(
                    imgsrc: 'assets/XVS.jpeg',
                    title: 'XVS',
                    subtitle: 'Venus',
                    percent: '+1,08%',
                    amount: '\$4,85',
                  ),
                  DiscoverSection(name: 'Defi', showArrow: true),
                  Defi(
                      imgsrc: 'assets/curve.png',
                      nama: 'Curve',
                      sc: 'Creating deep on-chain liquidity using advanced bonding curves',
                     ),
                  Defi(
                      imgsrc: 'assets/yearn.png',
                      nama: 'yearn.finance',
                      sc: 'Decentralized finance (DeFi) platform which aims to perform a host of functions such as aggregated liquidty, leverage trading...',
                      ),
                  Defi(
                      imgsrc: 'assets/uniswap.png',
                      nama: 'Uniswap Exchange',
                      sc: 'Uniswap is a protocol for automated token exchange',
                      ),
                  Defi(
                      imgsrc: 'assets/aave.jpeg',
                      nama: 'Aave',
                      sc: 'Open Source and Non-Custodial protocol to earn interest on desposits & borrow assets',
                      ),
                  Defi(
                      imgsrc: 'assets/inch.png',
                      nama: '1inch.io',
                      sc: 'Token Swap Aggregator',),
                ],
              ),
            ),
          ),
          BottomNavBar(
              isActiveHome: false,
              isActiveTrade: true,
              isActiveDApps: false,
              isActiveProfile: false),
        ],
      ),
    );
  }
}
