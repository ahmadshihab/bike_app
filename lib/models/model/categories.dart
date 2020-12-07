import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Categories with ChangeNotifier {
  List<String> _items = [];

  List<String> get items {
    return [..._items];
  }

  Future<void> fetchItems() async {
    const url = "https://bikehub.store/api/customer/menus";

    try {
      final response = await http.get(url);
      final extractData = json.decode(response.body) as Map;
      final List<String> loadedItems = [];
      extractData.forEach((key, value) {
        loadedItems.add(key);
      });

      _items = loadedItems;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
