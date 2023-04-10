// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/BottomNavbar.dart';
import 'package:trustwallet_clone/widget/DarkMode.dart';
import 'package:trustwallet_clone/widget/GarisAbu.dart';
import 'package:trustwallet_clone/widget/PageTitle.dart';
import 'package:trustwallet_clone/widget/SettingsMedsos.dart';
import 'package:trustwallet_clone/widget/SettingsMenu.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
          PageTitle(name: 'Settings'),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                SettingsMenu(
                    iconData: Icons.wallet_outlined, nama: 'Main Wallet 1'),
                DarkMode(iconData: Icons.dark_mode_outlined, nama: 'Dark Mode'),
                GarisAbu(),
                SettingsMenu(iconData: Icons.money, nama: 'Price Alerts'),
                SettingsMenu(iconData: Icons.person_outline, nama: 'Contacts'),
                SettingsMenu(iconData: Icons.qr_code, nama: 'Scan QR Code'),
                SettingsMenu(
                    iconData: Icons.connect_without_contact_sharp,
                    nama: 'WalletConnect'),
                GarisAbu(),
                SettingsMenu(iconData: Icons.settings, nama: 'Preferences'),
                SettingsMenu(iconData: Icons.security, nama: 'Security'),
                SettingsMenu(
                    iconData: Icons.notifications_outlined,
                    nama: 'Push Notifications'),
                GarisAbu(),
                SettingsMenu(iconData: Icons.help_center, nama: 'Help Center'),
                SettingsMenu(iconData: Icons.shield_outlined, nama: 'About'),
                GarisAbu(),
                SettingsMenuMedsos(
                    nama: 'Twitter', imgsrc: 'assets/twitter.png'),
                SettingsMenuMedsos(nama: 'Telegram', imgsrc: 'assets/tele.png'),
                SettingsMenuMedsos(nama: 'Facebook', imgsrc: 'assets/fb.png'),
                SettingsMenuMedsos(nama: 'Reddit', imgsrc: 'assets/reddit.png'),
                SettingsMenuMedsos(nama: 'Youtube', imgsrc: 'assets/yt.png')
              ],
            ),
          ),
          BottomNavBar(
              isActiveHome: false,
              isActiveTrade: false,
              isActiveDApps: false,
              isActiveProfile: true),
        ],
      ),
    );
  }
}
