import 'package:flutter/material.dart';

import '../../../../Backend/Model/product_model.dart';
//
// import '../../../../Backend/Model/product_model.dart';
//
// // class Productpage extends StatelessWidget {
// //   final Product product;
// //   const Productpage(this.product,{super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       elevation: 4,
// //       child: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: SingleChildScrollView(
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Container(
// //                 height: 10,
// //                 width: double.infinity,
// //                 clipBehavior: Clip.antiAlias,
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(4),
// //                 ),
// //                 child: Image.network(
// //                   product.imageLink,
// //                   fit: BoxFit.cover,
// //                 ),
// //               ),
// //               SizedBox(height: 10),
// //               Text(
// //                 product.name,
// //                 maxLines: 2,
// //                 style:
// //                 TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
// //                 overflow: TextOverflow.ellipsis,
// //               ),
// //               SizedBox(height: 5),
// //               if (product.rating != null)
// //                 Container(
// //                   decoration: BoxDecoration(
// //                     color: Colors.green,
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
// //                   child: Row(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Text(
// //                         product.rating.toString(),
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                       Icon(
// //                         Icons.star,
// //                         size: 16,
// //                         color: Colors.white,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               SizedBox(height: 5),
// //               Text('\$${product.price}',
// //                   style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
class ProductPage extends StatelessWidget {
  final Product product;
  const ProductPage({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(product.imageLink,),
          Text(product.name),
          Text('\$${product.price}'),
        ],
      ),
    );
  }
}
