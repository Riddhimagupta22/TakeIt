import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import 'package:take_it/Frontend/Features/Widgets/drawer.dart';
import '../Categories Page/Categories  Widgets/category_item.dart';
import 'Homepage Widgets/items.dart';
import 'Homepage Widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;

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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.wallet),color: Colors.white,iconSize: 23,),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text("Wallet",style: GoogleFonts.inter(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            ),),
          ),
        ],
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
          height: size.width*0.18,
          color: Color(0xFF0071DC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
          height: size.width*0.12,
            width: size.width*0.75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
            ),
            child: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(

                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                    textAlignVertical: TextAlignVertical(y: -1),
                  ),
                ),
                Container(height: size.width*0.12,
                  width: size.width*0.11,
                  decoration: BoxDecoration(
                      color: Color(0xFF93CBFF),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic),
                      color: Colors.blue,

                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: (){},
              icon:Icon(Icons.favorite_border,color: Colors.white,size: size.width*0.08,
              )
          )
          ],
                ),
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    child: Icon(Icons.location_on)),
                Text('12 Ram Bhavan,36 Street road ,Mullana,',style: GoogleFonts.inter(color: Color(0xFF666666)),overflow: TextOverflow.ellipsis,),
                IconButton(onPressed: (){
                  // Get.to(HomeScreen());
                }, icon: Icon (Icons.arrow_drop_down,color: Colors.grey,))
              ],),
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
                height: size.height*.18,
                child: Item()
            ),
             Divider(
              thickness: size.width * 0.0025,
              color: Color.fromARGB(
                255,
                233,
                232,
                232,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: size.width*.04,top: size.height*.009),
              child: Text('Recently Viewed Items',
                style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),),
            ),
            SizedBox(
              height: size.height*.18,
              child: ProductItem()
              ),
          ],
        ),
      ),
    );
  }
}
