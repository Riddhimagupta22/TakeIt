import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensItemItem extends StatelessWidget {
  final List<Map<String, String>> mensitem = [
    {'name': 'Men Suit', 'image': 'Assets/images/portrait-asian-businessman-wearing-suit-600nw-2240016667 1.png'},
    {'name': 'Belt', 'image': 'Assets/images/fashion-garments 1.png'},
    {'name': 'Pant', 'image': 'Assets/images/images 1.png'},
    {'name': 'Casuals', 'image': 'Assets/images/FSTSNK-9BROWN_400x 1.png'},
    {'name': 'Sandals', 'image': 'Assets/images/shxue_512 1.png'},
    {'name': 'Slipper', 'image': 'Assets/images/59266-BLACK_7 1.png'},
    {'name': 'SportsWear', 'image': 'assets/sportswear.png'},
    {'name': 'Sports Shoe', 'image': 'assets/sports_shoe.png'},
    {'name': 'Jacket', 'image': 'assets/jacket.png'},
    {'name': 'Watch', 'image': 'assets/watch.png'},
    {'name': 'Hoodie', 'image': 'assets/hoodie.png'},
    {'name': 'Tshirt', 'image': 'assets/tshirt.png'},
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Icon(Icons.image, size: 50), // Placeholder for images
                ),
              ),
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
