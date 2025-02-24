import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import 'package:take_it/Frontend/Screens/Home%20Page/drawer.dart';
import 'category_item.dart';
import 'items.dart';
import 'product_item.dart';

class HomeScreen extends StatelessWidget {
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
        title: Text(
          'TakeIt',
          style: GoogleFonts.inter(
            color: Color(0xFFFFFFFF),
            letterSpacing: 1,
            fontStyle: FontStyle.italic,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 40,
                      width: 347,
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
              child: Center(
                child: Text(
                  "12 Ram Bhavan,36 Street road ,Mullana, ...",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            CustomWidgets.CustomImage(img: 'Group 4.png'),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: [
                CategoryItem(
                    img:
                        'Assets/images/strong-black-man-wearing-black-leather-jacket-posing-in-studio-shot-against-yellow-background-2FMNMER-removebg-preview 2.png',
                    label: 'Male'),
                CategoryItem(
                    img:
                        'Assets/images/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896-removebg-preview 1.png',
                    label: 'Female'),
                CategoryItem(
                    img:
                        'Assets/images/IMG-20250209-WA0007-removebg-preview 4.png',
                    label: 'Kids'),
                CategoryItem(
                    img:
                        'Assets/images/IMG-20250209-WA0016-removebg-preview 1.png',
                    label: 'Electronics'),
              ],
            ),
            SizedBox(
                height: 135,
                child: Item()
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 8),
              child: Text('Recently Viewed Items',
                style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),),
            ),
            SizedBox(
              height: 150,
              child: ProductItem()
              ),
          ],
        ),
      ),
    );
  }
}
