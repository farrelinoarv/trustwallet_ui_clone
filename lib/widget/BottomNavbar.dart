import 'package:flutter/material.dart';
import 'package:trustwallet_clone/pages/browser_page/browser_page_view.dart';
import 'package:trustwallet_clone/pages/discover_page/discover_page_view.dart';
import 'package:trustwallet_clone/pages/main_page/main_page_view.dart';
import 'package:trustwallet_clone/pages/settings_page/settings_page_view.dart';
import 'package:trustwallet_clone/responsive/responsive.dart';
import 'package:trustwallet_clone/widget/BottomNabvarItem.dart';

class BottomNavBar extends StatelessWidget {
  final bool isActiveHome;
  final bool isActiveTrade;
  final bool isActiveDApps;
  final bool isActiveProfile;

  const BottomNavBar({
    super.key,
    required this.isActiveHome,
    required this.isActiveTrade,
    required this.isActiveDApps,
    required this.isActiveProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenHeight(10)),
            height: getProportionateScreenHeight(90),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavbarItem(
                  isActive: isActiveHome,
                  itemName: 'Home',
                  icon: Icons.shield_rounded,
                  ontap: () {
                    isActiveHome
                        ? {}
                        : Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      MainPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                  },
                ),
                BottomNavbarItem(
                  isActive: isActiveTrade,
                  itemName: 'Discover',
                  icon: Icons.search,
                  ontap: () {
                    isActiveTrade
                        ? {}
                        : Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      DiscoverPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                  },
                ),
                BottomNavbarItem(
                  isActive: isActiveDApps,
                  itemName: 'DApps',
                  icon: Icons.window_rounded,
                  ontap: () {
                    isActiveDApps
                        ? {}
                        : Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      BrowserPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                  },
                ),
                BottomNavbarItem(
                  isActive: isActiveProfile,
                  itemName: 'Settings',
                  icon: Icons.settings,
                  ontap: () {
                    isActiveProfile
                        ? {}
                        : Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 200),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      SettingsPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
