import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Backend/Controller/Cart Controller/buy_controller.dart';
import '../../Backend/Controller/Cart Controller/product_controller.dart';
import '../Features/Widgets/AppBar Widgets/appbar_widgets.dart';
import '../Features/Widgets/drawer.dart';

class Cart extends StatelessWidget {
  final productController = Get.put(ProductController());
  final cartController = Get.put(CartController());
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
      ),
      drawer: drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Expanded(
                child: GetX<ProductController>(
                  builder: (controller) {
                    if (controller.products.isEmpty) {
                      return Center(
                        child: Text(
                          "No products available!",
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        final product = controller.products[index];
                        return Card(
                          margin: EdgeInsets.all(11),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.productName,
                                          style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          product.productDescription,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          "\$${product.price}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.green),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    cartController.addToCart(product);
                                    Get.snackbar(
                                      "Added to Cart",
                                      "${product.productName} has been added to your cart.",
                                      snackPosition: SnackPosition.BOTTOM,
                                      duration: Duration(seconds: 2),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    "Add to Cart",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              GetX<CartController>(
                builder: (controller) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      "Total Amount: \$${controller.totalPrice.toStringAsFixed(2)}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
