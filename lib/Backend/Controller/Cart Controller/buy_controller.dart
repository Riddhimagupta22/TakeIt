import 'package:get/get.dart';
import '../../Model/product_model.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalPrice => cartItems.fold(0,(sum,item) => sum + item.price);

  addToCart( Product product){
    cartItems.add(product);
  }
}