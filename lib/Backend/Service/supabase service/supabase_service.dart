import 'package:supabase_flutter/supabase_flutter.dart';
import '../../Model/product_model.dart';

class SupabaseService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<Product>> fetchProducts(String category) async {
    final response = await _supabase
        .from('products')
        .select()
        .eq('category', category);

    if (response.isNotEmpty) {
      return response.map((data) => Product.fromJson(data)).toList();
    } else {
      return [];
    }
  }
}

