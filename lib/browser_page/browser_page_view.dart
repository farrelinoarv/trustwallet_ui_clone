import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/BottomNavbar.dart';
import 'package:trustwallet_clone/widget/Defi.dart';
import 'package:trustwallet_clone/widget/DiscoverSection.dart';
import 'package:trustwallet_clone/widget/SearchBar.dart';

class BrowserPage extends StatefulWidget {
  const BrowserPage({super.key});

  @override
  State<BrowserPage> createState() => _BrowserPageState();
}

class _BrowserPageState extends State<BrowserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true, // set to false to avoid safe area padding on top
        bottom: false, // set to false to avoid safe area padding on bottom
        left: false, // set to true to avoid safe area padding on left
        right: false,
        child: Scaffold(
          // backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30),
                  ),
                  child: ListView(
                    children: [
                      MySearchBar(),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      const DiscoverSection(name: 'History', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/beefy.png',
                        nama: 'Beefy Finace',
                        sc: 'https://app.beefy.finance/',
                      ),
                      const Defi(
                        imgsrc: 'assets/yearn.png',
                        nama: 'Yearn',
                        sc: 'https://yearn.finance/',
                      ),
                      const Defi(
                        imgsrc: 'assets/surnft.png',
                        nama: 'SurNFT',
                        sc: 'https://surnft.com/',
                      ),
                      const DiscoverSection(name: 'New DApps', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/surnft.png',
                        nama: 'SurNFT',
                        sc: 'SURNFT is AI powered NFT project based on BNB Chain. Use your imagination to create stunning pictures anytime, anywhere..',
                      ),
                      const Defi(
                        imgsrc: 'assets/looksrare.png',
                        nama: 'LooksRare',
                        sc: 'LooksRare is a next generation NFT market. Buy NFTs, sell NFTs.. or just HODL',
                      ),
                      const Defi(
                        imgsrc: 'assets/apollox.png',
                        nama: 'ApolloX',
                        sc: 'ApolloX is the leading decentralized derivatites exhange shaping Web3 trading',
                      ),
                      const DiscoverSection(name: 'DeFi', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/XVS.jpeg',
                        nama: 'Venus',
                        sc: 'A Decentralized Marketplace for Lenders and Borrowers with Borderless Stablecoins.',
                      ),
                      const Defi(
                        imgsrc: 'assets/beefy.png',
                        nama: 'Beefy',
                        sc: 'The Multichain Yield Optimizier',
                      ),
                      const Defi(
                        imgsrc: 'assets/pancake.png',
                        nama: 'PancakeSwap',
                        sc: 'The flippening is coming. Stack \$CAKE on Binance Smart Chain',
                      ),
                      const DiscoverSection(
                          name: 'Smart Chain', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/surnft.png',
                        nama: 'SurNFT',
                        sc: 'SURNFT is AI powered NFT project based on BNB Chain. Use your imagination to create stunning pictures anytime, anywhere..',
                      ),
                      const Defi(
                        imgsrc: 'assets/apollox.png',
                        nama: 'ApolloX',
                        sc: 'ApolloX is the leading decentralized derivatites exhange shaping Web3 trading',
                      ),
                      const Defi(
                        imgsrc: 'assets/powerpool.png',
                        nama: 'PowerPool',
                        sc: 'PowerPool is a DAO manager of non-custodial structured investments offering a familu of thematic pooled investemnt to..',
                      ),
                      const DiscoverSection(name: 'Popular', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/pancake.png',
                        nama: 'PancakeSwap',
                        sc: 'The flippening is coming. Stack \$CAKE on Binance Smart Chain',
                      ),
                      const Defi(
                        imgsrc: 'assets/uniswap.png',
                        nama: 'Uniswap Exchange',
                        sc: 'Uniswap is a protocol for automated token exchange',
                      ),
                      const Defi(
                        imgsrc: 'assets/COMP.png',
                        nama: 'Compound',
                        sc: 'Supply assets to the Compund protocol and earn interest',
                      ),
                      const DiscoverSection(
                          name: 'Yield Farming', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/lido.png',
                        nama: 'Lido Staking',
                        sc: 'Lido is a liquid staking solution for RTH 2.0 backed by industry-leading staking providers. Lido lets user stake their E..',
                      ),
                      const Defi(
                        imgsrc: 'assets/XVS.jpeg',
                        nama: 'Venus',
                        sc: 'A Decentralized Marketplace for Lenders and Borrowers with Borderless Stablecoins.',
                      ),
                      const Defi(
                        imgsrc: 'assets/beefy.png',
                        nama: 'Beefy',
                        sc: 'The Multichain Yield Optimizier',
                      ),
                      const DiscoverSection(name: 'Games', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/axie.png',
                        nama: 'Axie Infinity',
                        sc: 'Collecting, raising, and battling fantasy creatures called Axies',
                      ),
                      const DiscoverSection(name: 'Exchanges', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/biswap.png',
                        nama: 'Biswap',
                        sc: 'Decentralized exchange helping user swap tokens developed on the BNB Smart Chain',
                      ),
                      const Defi(
                        imgsrc: 'assets/apollox.png',
                        nama: 'ApolloX',
                        sc: 'ApolloX is the leading decentralized derivatites exhange shaping Web3 trading',
                      ),
                      const Defi(
                        imgsrc: 'assets/OOE.png',
                        nama: 'OpenOcean',
                        sc: 'Full chain aggregator tha offers the best swap pricing on Ethereum and Binance Smart Chain',
                      ),
                      const DiscoverSection(name: 'Security', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/everrise.png',
                        nama: 'Everrise',
                        sc: 'Blockchain technology company focused on increasing accesibility to DeFi by creating security and multi-chain soluti..',
                      ),
                      const Defi(
                        imgsrc: 'assets/unrekt.jpeg',
                        nama: 'Unrekt',
                        sc: 'Smart Contract Token Allowance Checker',
                      ),
                      const DiscoverSection(
                          name: 'Marketplaces', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/looksrare.png',
                        nama: 'LooksRare',
                        sc: 'LooksRare is a next generation NFT market. Buy NFTs, sell NFTs.. or just HODL',
                      ),
                      const Defi(
                        imgsrc: 'assets/airnft.jpeg',
                        nama: 'AirNFTs',
                        sc: 'NFT marketplace built on Binance Smart Chain - Buy, Collect, Sell NFTs',
                      ),
                      const Defi(
                        imgsrc: 'assets/rarible.png',
                        nama: 'Rarible',
                        sc: 'NFT Marketplace. Turn your products or services into publicly tradable items',
                      ),
                      const DiscoverSection(name: 'Social', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/airnft.jpeg',
                        nama: 'AirNFTs',
                        sc: 'NFT marketplace built on Binance Smart Chain - Buy, Collect, Sell NFTs',
                      ),
                      const Defi(
                        imgsrc: 'assets/rarible.png',
                        nama: 'Rarible',
                        sc: 'NFT Marketplace. Turn your products or services into publicly tradable items',
                      ),
                      const DiscoverSection(name: 'Utility', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/lido.png',
                        nama: 'Lido Staking',
                        sc: 'Lido is a liquid staking solution for RTH 2.0 backed by industry-leading staking providers. Lido lets user stake their E..',
                      ),
                      const Defi(
                        imgsrc: 'assets/trust.png',
                        nama: 'Trust Wallet Governance',
                        sc: 'The Trust Wallet team has enabled a governance mechanism to allow holders of \$TWT to decide on any proposals that dev..',
                      ),
                      const Defi(
                        imgsrc: 'assets/AAVE.png',
                        nama: 'Aave',
                        sc: 'Open Source and Non-Custodial protocol to earn interest on desposits & borrow assets.',
                      ),
                      const DiscoverSection(name: 'Staking', showArrow: true),
                      const Defi(
                        imgsrc: 'assets/lido.png',
                        nama: 'Lido Staking',
                        sc: 'Lido is a liquid staking solution for RTH 2.0 backed by industry-leading staking providers. Lido lets user stake their E..',
                      ),
                      const Defi(
                        imgsrc: 'assets/pancake.png',
                        nama: 'PancakeSwap',
                        sc: 'The flippening is coming. Stack \$CAKE on Binance Smart Chain',
                      ),
                      const Defi(
                        imgsrc: 'assets/AAVE.png',
                        nama: 'Aave',
                        sc: 'Open Source and Non-Custodial protocol to earn interest on desposits & borrow assets.',
                      ),
                    ],
                  ),
                ),
              ),
              const BottomNavBar(
                  isActiveHome: false,
                  isActiveTrade: false,
                  isActiveDApps: true,
                  isActiveProfile: false),
            ],
          ),
        ),
      ),
    );
  }
}
