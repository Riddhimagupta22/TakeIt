import 'package:flutter/material.dart';
import 'package:take_it/Frontend/Features/Widgets/drawer.dart';

import '../Features/Widgets/AppBar Widgets/appbar_widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;
    return  Scaffold(
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
    title: CustomAppBar.CustomText(text: 'Notification'),),
    drawer: drawer(),)
    ;
  }
}
