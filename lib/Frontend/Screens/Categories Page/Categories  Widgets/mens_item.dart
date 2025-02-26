import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensItem extends StatelessWidget {
  final List<Map<String, String>> mensitem = [
    {'name': 'Men Suit', 'image': 'Assets/images/portrait-asian-businessman-wearing-suit-600nw-2240016667 1.png'},
    {'name': 'Belt', 'image': 'Assets/images/fashion-garments 1.png'},
    {'name': 'Pant', 'image': 'Assets/images/images 1.png'},
    {'name': 'Casuals', 'image': 'Assets/images/FSTSNK-9BROWN_400x 1.png'},
    {'name': 'Sandals', 'image': 'Assets/images/shxue_512 1.png'},
    {'name': 'Slipper', 'image': 'Assets/images/59266-BLACK_7 1.png'},
    {'name': 'SportsWear', 'image': 'Assets/images/aj 1.png'},
    {'name': 'Sports Shoe', 'image': 'Assets/images/images (1) 1.png'},
    {'name': 'Jacket', 'image': 'Assets/images/strong-black-man-wearing-black-leather-jacket-posing-in-studio-shot-against-yellow-background-2FMNMER 1.png'},
    {'name': 'Watch', 'image': 'Assets/images/men-watches 1.png'},
    {'name': 'Hoodie', 'image': 'Assets/images/1_4c7903d8-894b-4f1d-8458-5054c10ca893 1.png'},
    {'name': 'Tshirt', 'image': 'Assets/images/istockphoto-188104960-612x612 1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: mensitem.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Center(
              child:  Image.asset( mensitem[index]['image']!
              ), // Placeholder for images
            ),
            SizedBox(height: 5),
            Text(
              mensitem[index]['name']!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ],
        );
      },
    );
  }
}
