import 'package:flutter/material.dart';
import 'package:take_it/Frontend/Screens/Categories%20Page/Categories%20%20Widgets/mens_item.dart';
import 'package:take_it/Frontend/Screens/Categories%20Page/Categories%20%20Widgets/side_categories.dart';

import '../../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../../Features/Widgets/drawer.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

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
        title: CustomAppBar.CustomText(text: 'All Categories'),
        actions: [CustomAppBar.CustomIcon()],
      ),
      drawer: drawer(),
    body: Row(
      children: [
        SideCategories(),

        Expanded(child: MensItem()),
      ],
    ),);
  }
}
