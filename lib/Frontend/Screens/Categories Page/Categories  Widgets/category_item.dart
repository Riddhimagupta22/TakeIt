import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryItem extends StatelessWidget {
  final String img;
  final String label;

  CategoryItem({required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(img, height: 40,width: 50,),
        Text(label,  style: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),),
      ],
    );
  }
}