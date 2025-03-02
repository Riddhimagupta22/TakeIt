// import 'package:get/get.dart';
// import '../../Model/product_model.dart';
//
// class ProductController extends GetxController{
//   var products = <Product>[].obs;
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     fetchProducts();
//   }
//
//   fetchProducts()  async {
//     await Future.delayed(Duration(seconds: 1));
//     var productResult = [
//       Product(
//           id: 1,
//           productName: "some description",
//           productImage: 'abd',
//           productDescription: 'Shoes', price: 300.0),
//       Product(
//           id: 2,
//           productName: "some description",
//           productImage: 'abd',
//           productDescription: 'Shoes',
//           price: 500.00),
//       Product(
//           id: 3,
//           productName: "some description",
//           productImage: 'abd',
//           productDescription: 'Shoes',
//           price: 1000.00),
//     ];
//     products.value = productResult;
//   }
// }