import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidgets{
  static CustomImage({required String img}){
    return Image.asset("Assets/images/$img");
  }


  static CustomTextfield({required String text, required IconData icon}){
return SizedBox(
  height:45 ,
  child: TextField(
    decoration: InputDecoration(
    prefixIcon: Icon(icon),
    iconColor: Colors.black,
    hintText: text,
    hintStyle: GoogleFonts.poppins(),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
    ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        )),
  ),
);
  }
}