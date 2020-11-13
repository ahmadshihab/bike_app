import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  final int id;
  final String title;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String imageUrl;

  Product({this.id, this.title, this.createdAt, this.updatedAt, this.imageUrl});

  Future<List<Product>> fetchProductsLists(String title) async {
    final List<Product> loadedProducts = [];

    const url = "http://bikehub.store/api/customer/menus";

    try {
      final response = await http.get(url);
      final extractData = json.decode(response.body)[title];

      for (int i = 0; i < extractData.length; i++) {
        loadedProducts.add(Product(
            id: extractData[i]["id"],
            title: extractData[i]["title"],
            createdAt: extractData[i]["created_at"],
            updatedAt: extractData[i]["updated_at"],
            imageUrl: extractData[i]["image"]));
      }

      return loadedProducts;
    } catch (error) {
      throw error;
    }
  }
}
