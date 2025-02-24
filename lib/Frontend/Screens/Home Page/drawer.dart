import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Auth/signup_screen.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.only(top: 50),
        children: <Widget>[
          ListTile(
            title: Text(
              "Carter Sam",
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text("+001 897387****",style: GoogleFonts.poppins(
              color: Color(0xFF999999),
                fontSize: 16, fontWeight: FontWeight.w500),),
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.person, size: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 100),
            child: Divider(
              thickness: 1,
              color: Color(0xFF999999),
            ),
          ),
          ListTile(
              title: Text(
                'Edit Profile',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Refer And Earn',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Coupons',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'My Orders',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Wishlist',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Wallet',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Reviews',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),
          ListTile(
              title: Text(
                'Question & Answers',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              onTap: () {}),

          Padding(
            padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
            child: SizedBox(
              height: 30,
              width: 278,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SignUpScreen());
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    backgroundColor: Color(0xFF000000),
                    foregroundColor: Color(0xffffffff),
                    splashFactory: NoSplash.splashFactory,
                    elevation: 10,
                    shadowColor: Colors.black26),
                child: Text(
                  "Log Out",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
