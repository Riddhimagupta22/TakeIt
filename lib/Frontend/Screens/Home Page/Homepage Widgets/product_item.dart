import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';

class ProductItem extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Kids Clo...', 'image':'Assets/images/IMG-20250209-WA0007-removebg-preview 3.png'},
    {'name': 'Gifts', 'image':'Assets/images/IMG-20250209-WA0006-removebg-preview 1.png'},
    {'name': 'Men’s Wat..', 'image':'Assets/images/IMG-20250209-WA0009-removebg-preview 1.png'},
    {'name': 'Body Loti', 'image':'Assets/images/IMG-20250209-WA0005-removebg-preview 1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left:size.width*.007,right: size.width*.007,top: size.height*.007,bottom: size.height*.0001),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: size.width*.04,top: size.height*.001,),
          width: size.width*.3,
          decoration: BoxDecoration(
            // color: Colors.black38,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Image.asset( products[index]['image']!,height:  size.height*.1,width: size.width*.9,
              ),
              Padding(
                padding:  EdgeInsets.only(left: size.width*.01,right: size.width*.01,top: size.height*.03),
                child: Text(
                  products[index]['name']!,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

