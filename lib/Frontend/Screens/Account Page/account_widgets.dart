import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountWidgets {
  static ListWidgets({required String text, required IconData icon}){
  return ListTile(
    leading: Icon(icon,color: Colors.black,size: 25,) ,
    title: Text(text,style: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black
    ),) ,
    trailing:Icon(Icons.arrow_forward_ios,color: Color(0xFF999999),size: 17,) ,
  );}
  static ListWidget(){
    return ListTile(
      leading: Icon(Icons.perm_identity_sharp,color: Colors.black,size: 25,) ,
      title: Text('Edit Profile',style: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black
      ),) ,
      trailing:Icon(Icons.edit,color: Color(0xFF100B21),size: 17,) ,
    );}

}
