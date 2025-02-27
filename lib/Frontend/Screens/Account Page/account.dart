import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Backend/Service/Auth%20Service/auth_service.dart';
import '../../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../../Features/Widgets/drawer.dart';
import 'account_widgets.dart';

class Account extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
              }
            },
            icon: Icon(Icons.menu, color: Colors.white, size: 30)),
        title: CustomAppBar.CustomText(text: 'Profile'),
        actions: [CustomAppBar.CustomIcon()],
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding:  EdgeInsets.only(top: size.height*.03),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                  'Assets/images/strong-black-man-wearing-black-leather-jacket-posing-in-studio-shot-against-yellow-background-2FMNMER 1.png'), // Replace with network image if needed
            ),
          ),
          SizedBox(height: size.height*.01),
          Text(
            'Carter Sam',
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),
          ),
          Text('+001 89732***', style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF999999)
          ),),
          Text('carter88***@gmail.com', style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF999999)
          ),),
          Padding(
            padding:  EdgeInsets.only(left: size.width*.05,right: size.width*.05,),
            child: Divider(
              thickness: size.width * 0.0025,
              color: Color(0xFF999999),
            ),
          ),
          AccountWidgets.ListWidget(),
          Padding(
            padding: EdgeInsets.only(bottom:  size.height*.001),
            child: Divider(
              thickness: size.width * 0.015,
              color: Color.fromARGB(
                255,
                233,
                232,
                232,
              ),
            ),
          ),
          AccountWidgets.ListWidgets(text: 'Refer And Earn', icon: Icons.send),
          AccountWidgets.ListWidgets(text: 'Coupons', icon: Icons.discount),
          AccountWidgets.ListWidgets(
              text: 'My Orders', icon: Icons.shopping_cart),
          AccountWidgets.ListWidgets(text: 'Wishlist', icon: Icons.favorite),
          AccountWidgets.ListWidgets(
              text: 'Wallet', icon: Icons.account_balance_wallet),
          Divider(
            thickness: size.width * 0.007,
            color: Color.fromARGB(
              255,
              233,
              232,
              232,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: size.width * 0.6,
                top: size.height * 0.01,
                ),
            child: Text(
              'My Activity',
              style: GoogleFonts.poppins(
                shadows:[Shadow(
                  offset:  Offset(2, 2),
                  blurRadius: 10,
                  color: Colors.black38


                ),],
                  fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
          AccountWidgets.ListWidgets(text: 'Reviews', icon: Icons.rate_review),
          AccountWidgets.ListWidgets(
              text: 'Question & Answers', icon: Icons.question_answer_outlined)
        ]),
      ),
    );
  }
}
