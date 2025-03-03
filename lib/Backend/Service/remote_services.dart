import 'package:http/http.dart' as http;

import '../Model/product_model.dart';


class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse("'https://real-time-amazon-data.p.rapidapi.com/product-details?asin=B07ZPKBL9V&country=US") );

    if(response.statusCode == 200){
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return [];
    }
  }
}




