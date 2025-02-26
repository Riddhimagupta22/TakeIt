import 'package:flutter/material.dart';

class SideCategories extends StatelessWidget {
  final List<Map<String, String>> sideCategories = [
    {'name': 'For You', 'image': 'Assets/images/mdi_shopping (1).png'},
    {
      'name': 'Shoes',
      'image': 'Assets/images/IMG-20250209-WA0021-removebg-preview 1.png'
    },
    {
      'name': 'Laptops',
      'image': 'Assets/images/IMG-20250209-WA0020-removebg-preview 1.png'
    },
    {
      'name': 'Electronics',
      'image': 'Assets/images/IMG-20250209-WA0016-removebg-preview 1 (1).png'
    },
    {
      'name': 'Food',
      'image': 'Assets/images/IMG-20250209-WA0017-removebg-preview 1.png'
    },
    {
      'name': 'Kitchen',
      'image': 'Assets/images/IMG-20250209-WA0014-removebg-preview 1 (1).png'
    },
    {
      'name': 'Furniture',
      'image': 'Assets/images/IMG-20250209-WA0018-removebg-preview 1.png'
    },
    {
      'name': 'Mobile',
      'image': 'Assets/images/IMG-20250209-WA0011-removebg-preview 4.png'
    },
    {
      'name': 'Kids',
      'image': 'Assets/images/IMG-20250209-WA0007-removebg-preview 5.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      color: Colors.grey[200],
      child: ListView.builder(
        itemCount: sideCategories.length,
        itemBuilder: (context, index) {
          return
            Padding(
               padding: const EdgeInsets.symmetric(vertical: 10),
               child: RotatedBox(
                  quarterTurns: 0,
           child:  Column(
            children: [
              Center(
                child: Image.asset(
                    sideCategories[index]['image']!), // Placeholder for images
              ),
              SizedBox(height: 5),
              Text(
                sideCategories[index]['name']!,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          )));
        },
      ),
    );
  }
}
