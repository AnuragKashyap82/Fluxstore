import 'package:flucstore/screens/home_screen.dart';
import 'package:flucstore/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: colorBlack);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Cart',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8),
        child: GNav(
          activeColor: blue,
          color: colorBlack,
          tabBackgroundColor: Colors.white,
          padding: EdgeInsets.all(16),
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              iconColor: colorBlack,
              text: "Shop",
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: blue
              ),
            ),
            GButton(
              icon: Icons.search,
              iconColor: colorBlack,
              text: "Search",
              textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: blue
              ),
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              iconColor: colorBlack,
              text: "Cart",
              textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: blue
              ),
            ),
            GButton(
              icon: Icons.person_outline_rounded,
              iconColor: colorBlack,
              text: "Profile",
              textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: blue
              ),
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
