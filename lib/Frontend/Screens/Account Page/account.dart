import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../../Features/Widgets/drawer.dart';
import 'account_widgets.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
      final scaffoldKey = GlobalKey<ScaffoldState>();
        var size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
          backgroundColor: Colors.blue,
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
       body: Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        // physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20),
            child: Image.asset(
              "images/efd.png",
            ),
          ),
          Center(
            child: Text(
              'Any list you create become a filter at the',
              style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.034,
              ),
            ),
          ),
          Center(
            child: Text(
              'top of yoour Chats tab.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.034,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 16, 54, 41),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add,
                        color: Color.fromARGB(255, 214, 252, 205)),
                    Text(
                      'Create a custom list',
                      style: TextStyle(
                          color: Color.fromARGB(255, 214, 252, 205)),
                    )
                  ],
                )),
          ),
          const Divider(
            thickness: 7,
            color: Color.fromARGB(255, 233, 232, 232, ),
          ),
          AccountWidgets.ListWidgets(text: 'Refer And Earn', icon: Icons.send),
          AccountWidgets.ListWidgets(text: 'Coupons', icon: Icons.discount),
          AccountWidgets.ListWidgets(text: 'My Orders', icon: Icons.shopping_cart),
          AccountWidgets.ListWidgets(text: 'Wishlist', icon: Icons.favorite),
          AccountWidgets.ListWidgets(text: 'Wallet', icon: Icons.account_balance_wallet),
          const Divider(
            thickness: 3,
            color: Color.fromARGB(255, 233, 232, 232, ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05, top: size.height * 0.01,bottom: size.height * 0.01),
            child: Text(
              'My Activity',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
          ),
          AccountWidgets.ListWidgets(text: 'Reviews', icon: Icons.rate_review),
          AccountWidgets.ListWidgets(text: 'Question & Answers', icon: Icons.question_answer_outlined),
]
    )
    ),
    );
  }
}
