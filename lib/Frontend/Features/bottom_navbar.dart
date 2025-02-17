import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: 'Home'),
        BottomNavigationBarItem(icon:Icon(Icons.list),label: 'Categories'),
        BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined),label: 'Cart'),
        BottomNavigationBarItem(icon:Icon(Icons.notifications_none),label: 'Notification'),
        BottomNavigationBarItem(icon:Icon(Icons.account_circle_outlined),label: 'Account'),
      ]),
    );
  }
}
