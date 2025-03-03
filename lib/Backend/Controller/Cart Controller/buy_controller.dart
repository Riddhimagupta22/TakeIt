
import 'package:get/get.dart';

import '../../Model/product_model.dart';
import '../../Service/remote_services.dart';

class ShoppingController extends GetxController{
  var isLoading = true.obs;
  var productslist = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async{
    isLoading (true);
    var products = await RemoteServices.fetchProducts();

    if (products != null){
      productslist.value = products;
    }
    isLoading(false);
  }
  void addProduct( Product product){
    productslist.add(product);
  }
  void removeProduct( Product product){
    productslist.remove(product);
  }}
