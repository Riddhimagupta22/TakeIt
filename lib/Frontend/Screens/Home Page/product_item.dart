import 'package:flutter/material.dart';
import 'package:take_it/Frontend/Features/Widgets/custom%20image.dart';
class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          children: [
           CustomWidgets.CustomImage(img: 'IMG-20250209-WA0005-removebg-preview 2.png'),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Product Name', style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
