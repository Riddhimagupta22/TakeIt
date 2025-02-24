import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar {
  static CustomText({required String text}) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: Color(0xFFF5F5F5),
        fontSize: 24,
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
              size: 25,
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.mic,
            color: Colors.white,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 25,
          ),
        )
      ],
    );
  }
}
