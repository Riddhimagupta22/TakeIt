import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Backend/Controller/Cart Controller/buy_controller.dart';
import '../../Backend/Controller/Cart Controller/product_controller.dart';
import '../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../Features/Widgets/drawer.dart';

class Cart extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  int totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;
    return  Scaffold(
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
            icon: Icon(Icons.menu, color: Colors.white, size: 30)),
        title: CustomAppBar.CustomText(text: 'Cart'),
        actions: [CustomAppBar.CustomIcon()],
        bottom: PreferredSize(

          preferredSize: Size.fromHeight(30),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 5),
                Expanded(
                  child: Text(
                    '12 Ram Bhavan, 36 Street road, Mullana',
                    style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(Icons.arrow_drop_down, color: Colors.white),
              ],
            ),
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Wishlist Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Wishlist", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: StreamBuilder(
              stream: _firestore.collection('wishlist').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

                return GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    var item = snapshot.data!.docs[index];
                    return Card(
                      elevation: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.grey[200],
                              child: Center(child: Icon(Icons.image, size: 50)), // Placeholder for image
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(item['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("\$${item['price']}", style: TextStyle(color: Colors.green)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => addToCart(item),
                              child: Text('Shop Now'),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.favorite, color: Colors.red),
                              onPressed: () {}, // Remove from wishlist logic
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),

          // Cart Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("In Cart", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          StreamBuilder(
            stream: _firestore.collection('cart').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

              totalAmount = snapshot.data!.docs.fold(0, (sum, doc) => sum + doc['price']as int);

              return Column(
                children: snapshot.data!.docs.map((item) {
                  return ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey[200],
                      child: Center(child: Icon(Icons.image)), // Placeholder for image
                    ),
                    title: Text(item['name']),
                    subtitle: Text("Qty: ${item['quantity']} - \$${item['price']}"),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => removeFromCart(item.id),
                    ),
                  );
                }).toList(),
              );
            },
          ),

          // Proceed to Buy Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Proceed to Buy", style: TextStyle(fontSize: 16)),
                  Text("\$$totalAmount", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Add to Cart function
  void addToCart(DocumentSnapshot item) async {
    await _firestore.collection('cart').add({
      'name': item['name'],
      'price': item['price'],
      'quantity': 1,
    });
  }

  // Remove from Cart function
  void removeFromCart(String id) async {
    await _firestore.collection('cart').doc(id).delete();
  }
}
