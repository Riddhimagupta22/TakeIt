import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Screens/cart.dart';

class CustomAppBar {
  static CustomText({required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: Color(0xFFF5F5F5),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  static CustomIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 23,
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mic,
            color: Colors.white,
            size: 23,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(CartScreen());
          },
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 23,
          ),
        )
      ],
    );
  }
}
