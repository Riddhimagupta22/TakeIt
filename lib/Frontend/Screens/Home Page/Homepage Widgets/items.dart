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
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: size.width*.007,right: size.width*.007,top: size.height*.007,bottom: size.height*.007),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: size.width*.04,top: size.height*.001,),
          width: size.width*.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Image.asset( items[index]['image']!,height: size.height*.09,width: size.width*.25,
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
                padding:  EdgeInsets.only(left: size.width*.01,right: size.width*.01,top:size.height*.005),
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

