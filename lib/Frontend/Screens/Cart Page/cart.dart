import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../../Features/Widgets/drawer.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wishlistItems = [
    {"image": "Assets/images/59266-BLACK_7 1.png", "name": "Slipper", "price": 450},
    {"image": "Assets/images/images 1.png", "name": "Pant", "price": 370},
    {"image": "Assets/images/men-watches 1.png", "name": "Watch", "price": 650},
    {"image": "Assets/images/strong-black-man-wearing-black-leather-jacket-posing-in-studio-shot-against-yellow-background-2FMNMER 1.png", "name": "Jacket", "price": 1000},
  ];

  final Map<String, dynamic> cartItem = {
    "image": "Assets/images/images (1) 1.png",
    "name": "Nike Alpha Bloober Men Shoe",
    "price": 1999,
    "shipping": "FREE Shipping",
    "status": "In Stock",
  };

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
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
        title: CustomAppBar.CustomText(text: 'Cart'),
        actions: [CustomAppBar.CustomIcon()],
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10,right: 9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    child: Icon(Icons.location_on)),
                Text('12 Ram Bhavan,36 Street road ,Mullana',style: GoogleFonts.inter(color: Color(0xFF666666)),),
                IconButton(onPressed: (){
                  // Get.to(HomeScreen());
                }, icon: Icon (Icons.arrow_drop_down,color: Colors.grey,))
              ],),
            SizedBox(height: 3),
            Text("Wishlist", style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            SizedBox(
              height: 480,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                itemCount: wishlistItems.length,
                itemBuilder: (context, index) {
                  final item = wishlistItems[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            item["image"],
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(item["name"], style: GoogleFonts.poppins(fontSize: 16)),
                        Text("\$${item["price"]}", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                          child: Text("Shop Now"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text("In Cart", style:  GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w700)),
            SizedBox(height: 10),
            Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    cartItem["image"],
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Icon(Icons.error),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(cartItem["name"], style: GoogleFonts.poppins(fontSize: 16)),
                        SizedBox(height: 5),
                        Text("\$${cartItem["price"]}", style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold)),
                        Text(cartItem["shipping"], style: GoogleFonts.poppins(color: Colors.green)),
                        Text(cartItem["status"], style: GoogleFonts.poppins(color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Proceed to Buy (1 item)", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("\$1000", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}