import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../Features/Widgets/Cart/product_cart.dart';
import '../Features/Widgets/Cart/wishlist_list.dart';
import '../Features/Widgets/drawer.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Map<String, dynamic>> wishlist = [
    {
      "name": "Slipper",
      "price": 450,
      "image": "assets/images/59266-BLACK_7 1.png"
    },
    {"name": "Pant", "price": 370, "image": "assets/images/images 1.png"},
    {"name": "Watch", "price": 650, "image": "assets/images/men-watches 1.png"},
    {
      "name": "Jacket",
      "price": 1000,
      "image":
      "assets/images/strong-black-man-wearing-black-leather-jacket.png"
    },
  ];

  List<Map<String, dynamic>> products = [
    {
      'name': 'Nike Alpha Bloober Men Shoe',
      'price': 1999,
      'image': "assets/images/shoe.png",
      'quantity': 1,
      'inStock': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var size = MediaQuery.of(context).size;

  return Scaffold(
  key: scaffoldKey,
  appBar: AppBar(
  leading: IconButton(
  onPressed: () {
  if (scaffoldKey.currentState!.isDrawerOpen) {
  scaffoldKey.currentState!.closeDrawer();
  } else {
  scaffoldKey.currentState!.openDrawer();
  }
  },
  icon: Icon(Icons.menu, color: Colors.white, size: 30),
  ),
  title: CustomAppBar.CustomText(text: 'Cart'),
  actions: [CustomAppBar.CustomIcon()],
  ),
  drawer: drawer(),
  body: Container(
  color: Colors.white,
  child: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  // Location Row
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  Icon(Icons.location_on),
  Expanded(
  child: Text(
  '12 Ram Bhavan, 36 Street road, Mullana',
  style: GoogleFonts.inter(color: Color(0xFF666666)),
  overflow: TextOverflow.ellipsis,
  ),
  ),
  IconButton(
  onPressed: () {},
  icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
  ),
  ],
  ),

  SizedBox(height: 10),

  // Wishlist Section
  Text(
  "Wishlist",
  style: GoogleFonts.poppins(
  fontSize: 18, fontWeight: FontWeight.w600),
  ),
  SizedBox(height: 10),
  wishlist.isNotEmpty
  ? WishlistContainer(wishlist: wishlist)
      : Center(
  child: Padding(
  padding: const EdgeInsets.all(20.0),
  child: Text(
  "Your wishlist is empty",
  style: GoogleFonts.poppins(
  fontSize: 16, color: Colors.grey),
  ),
  ),
  ),

  SizedBox(height: 20),

  // Cart Section
  Text(
  "In Cart",
  style: GoogleFonts.poppins(
  fontSize: 18, fontWeight: FontWeight.bold),
  ),
  SizedBox(height: 10),

  products.isNotEmpty
  ? Column(
  children: products
      .map((product) => CartItem(product: product))
      .toList(),
  )
      : Center(
  child: Padding(
  padding: const EdgeInsets.all(20.0),
  child: Text(
  "Your cart is empty",
  style: GoogleFonts.poppins(
  fontSize: 16, color: Colors.grey),
  ),
  ),
  ),

  SizedBox(height: 100),
  ],
  ),
  ),
  ),
  ),

  // Proceed to Buy Button
  bottomNavigationBar: Container(
  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
  color: Color.fromRGBO(255, 179, 0, 1),
  borderRadius: BorderRadius.circular(22),
  ),
  padding: EdgeInsets.all(16),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text(
  "Proceed to Buy (${products.length} item${products.length > 1 ? 's' : ''})",
  style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
  ),
  Text(
  "\$${products.fold(0, (sum, item) => sum + (item['price'] * item['quantity'] as int ))}",
  style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),
  );
  }
  }
