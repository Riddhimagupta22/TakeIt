import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Backend/Service/Auth%20Service/auth_service.dart';
import 'package:take_it/Frontend/Auth/signup_screen.dart';

class drawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(top: size.height*0.06),
            child: ListTile(
              title: Text(
                "Carter Sam",
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text("+001 897387****",style: GoogleFonts.poppins(
                color: Color(0xFF999999),
                  fontSize: 16, fontWeight: FontWeight.w500),),
              leading: CircleAvatar(
                radius: size.width*.06,
                backgroundImage: AssetImage("Assets/images/strong-black-man-wearing-black-leather-jacket-posing-in-studio-shot-against-yellow-background-2FMNMER 1.png",),
              ),
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
            padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
            child: SizedBox(
              height: 30,
              width: 278,
              child: ElevatedButton(
                onPressed: () {
                  AuthService().signout();
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
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:take_it/Backend/Service/Auth%20Service/auth_service.dart';
// import 'package:take_it/Frontend/Auth/signup_screen.dart';
//
// class drawer extends StatelessWidget {
//   final  currentUser = FirebaseAuth.instance.currentUser; // Get current user
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             StreamBuilder(
//               stream:
//                    FirebaseFirestore.instance
//                   .collection("users") // Ensure this matches your Firestore collection name
//                   .where("uid", isEqualTo: currentUser!.uid)
//                   .snapshots(),
//               builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//
//                 if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                   return ListTile(
//                     title: Text(
//                       "User Name",
//                       style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                     subtitle: Text(
//                       "User Email",
//                       style: GoogleFonts.poppins(
//                         color: Color(0xFF999999),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     leading: CircleAvatar(
//                       backgroundColor: Colors.yellow,
//                       child: Icon(Icons.person, size: 40),
//                     ),
//                   );
//                 }
//
//                 var userData = snapshot.data!.docs.first.data() as Map<String, dynamic>;
//
//                 return ListTile(
//                   title: Text(
//                     userData["name"] ?? "User Name",
//                     style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
//                   ),
//                   subtitle: Text(
//                     userData["emailid"] ?? "No EmailID",
//                     style: GoogleFonts.poppins(
//                       color: Color(0xFF999999),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   leading: CircleAvatar(
//                     backgroundColor: Colors.yellow,
//                     child: Icon(Icons.person, size: 40),
//                   ),
//                 );
//               },
//             ),
//
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0, right: 100),
//               child: Divider(thickness: 1, color: Color(0xFF999999)),
//             ),
//             buildMenuItem('Edit Profile', () {}),
//             buildMenuItem('Refer And Earn', () {}),
//             buildMenuItem('Coupons', () {}),
//             buildMenuItem('My Orders', () {}),
//             buildMenuItem('Wishlist', () {}),
//             buildMenuItem('Wallet', () {}),
//             buildMenuItem('Reviews', () {}),
//             buildMenuItem('Question & Answers', () {}),
//
//             Padding(
//               padding: const EdgeInsets.only( left: 20, right: 20),
//               child: SizedBox(
//                 height: 30,
//                 width: 278,
//                 child: ElevatedButton(
//                   onPressed: () async {
//                     await AuthService().signout();
//                     Get.to(() => SignUpScreen()); // Navigate to Sign-up screen
//                   },
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
//                     backgroundColor: Color(0xFF000000),
//                     foregroundColor: Color(0xffffffff),
//                     splashFactory: NoSplash.splashFactory,
//                     elevation: 10,
//                     shadowColor: Colors.black26,
//                   ),
//                   child: Text(
//                     "Log Out",
//                     style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildMenuItem(String title, VoidCallback onTap) {
//     return ListTile(
//       title: Text(
//         title,
//         style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400),
//       ),
//       onTap: onTap,
//     );
//   }
// }
