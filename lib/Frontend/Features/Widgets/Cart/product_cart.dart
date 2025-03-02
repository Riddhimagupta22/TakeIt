import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  final Map<String, dynamic> product;

  CartItem({required this.product});

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    quantity = widget.product['quantity'] ?? 1;
  }

  void updateQuantity(int change) {
    setState(() {
      quantity = (quantity + change).clamp(1, 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(screenWidth * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Row(
        children: [
          // Product Image (Only Assets)
          Container(
            height: screenWidth * 0.2,
            width: screenWidth * 0.2,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: widget.product['image'] != null
                ? Image.asset(
              widget.product['image'], // Load only from assets
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.image_not_supported, size: screenWidth * 0.1),
            )
                : Icon(Icons.image_not_supported, size: screenWidth * 0.1),
          ),

          SizedBox(width: screenWidth * 0.04),

          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  widget.product['name'] ?? "No Name",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(height: 8),

                // Price
                Text(
                  "\$${widget.product['price'] ?? '0.00'}",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.05,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // Shipping Info
                Text(
                  "FREE SHIPPING",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.035,
                    color: Colors.grey.withOpacity(0.9),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // Stock Availability
                Text(
                  widget.product['inStock'] == true ? "In Stock" : "Out of Stock",
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.w500,
                    color: widget.product['inStock'] == true ? Colors.green : Colors.red,
                  ),
                ),

                SizedBox(height: 8),

                // Quantity Selector
                Row(
                  children: [
                    Text(
                      "Qty: ",
                      style: GoogleFonts.poppins(fontSize: screenWidth * 0.035, color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () => updateQuantity(-1),
                      icon: Icon(Icons.remove, color: Colors.black, size: screenWidth * 0.05),
                    ),
                    Text(
                      "$quantity",
                      style: GoogleFonts.poppins(fontSize: screenWidth * 0.035, color: Colors.black),
                    ),
                    IconButton(
                      onPressed: () => updateQuantity(1),
                      icon: Icon(Icons.add, color: Colors.black, size: screenWidth * 0.05),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
