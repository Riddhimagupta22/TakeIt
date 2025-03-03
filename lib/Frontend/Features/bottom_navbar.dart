import 'package:flutter/material.dart';
import 'package:take_it/Frontend/Screens/notifications.dart';

import '../Screens/Home Page/home_screen.dart';
import '../Screens/Account Page/account.dart';
import '../Screens/Cart Page/cart.dart';
import '../Screens/Categories Page/categories.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomeScreen(),
          Categories(),
          CartScreen(),
          Notifications(),
          Account(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 25,

          selectedItemColor: Colors.blue,
          unselectedItemColor:  Color(0xFF999999),
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _pageViewController.jumpToPage(index);
          },items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Categories'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none), label: 'Notification'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: 'Account'),
      ]),
    );
  }
}
