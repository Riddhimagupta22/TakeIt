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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 8),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10,top: 1,),
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Image.asset( products[index]['image']!,height: 90,width: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0,right: 4,top:18),
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

