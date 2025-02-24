import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
import 'package:take_it/Frontend/Screens/Home%20Page/drawer.dart';
import 'category_item.dart';
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
        leading: SizedBox(
          height: size.width*.03,
          width: size.width*.03,
          child: IconButton(
              onPressed: () {
                if(scaffoldKey.currentState!.isDrawerOpen){
                scaffoldKey.currentState!.closeDrawer();
                }else{scaffoldKey.currentState!.openDrawer();}
              }, icon: Icon(Icons.menu, color: Colors.white,
          size:30)),
        ),
         title: Text('TakeIt', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800)),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomWidgets.CustomImage(img: 'Group 4.png'),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: [
                CategoryItem(icon: Icons.man, label: 'Men'),
                CategoryItem(icon: Icons.woman, label: 'Female'),
                CategoryItem(icon: Icons.child_care, label: 'Kids'),
                CategoryItem(
                    icon: Icons.electrical_services, label: 'Electronics'),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recently Viewed Items',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ProductItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
