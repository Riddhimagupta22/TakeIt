import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';

class Item extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'name': 'Tv & Lapto..', 'image':'Assets/images/IMG-20250209-WA0010-removebg-preview (1) 1.png','label':"From\$100/M"},
    {'name': 'Latest Mobi...', 'image':'Assets/images/IMG-20250209-WA0011-removebg-preview 2.png','label':"From\$60/M"},
    {'name': 'Beauty Pro..', 'image':'Assets/images/IMG-20250209-WA0005-removebg-preview 1.png','label':"Take it at\$9"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 8.0,right: 8,top: 2,bottom: 8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 10,top: 1,),
          width: 113,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Image.asset( items[index]['image']!,height: 70,width: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0,right: 4,top:9),
                child: Text(
                  items[index]['name']!,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0,right: 4,top:1),
                child: Text(
                  items[index]['label']!,
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

