import 'package:flutter/material.dart';
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
                ),
                BottomNavbarItem(
                  isActive: isActiveTrade,
                  itemName: 'Discover',
                  icon: Icons.search,
                ),
                BottomNavbarItem(
                  isActive: isActiveDApps,
                  itemName: 'DApps',
                  icon: Icons.window_rounded,
                ),
                BottomNavbarItem(
                  isActive: isActiveProfile,
                  itemName: 'Settings',
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
