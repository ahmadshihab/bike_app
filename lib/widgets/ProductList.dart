import 'package:bikes_app/models/dart/categories.dart';
import 'package:bikes_app/widgets/ProductTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<Categories>(context);

    return ListView.builder(
      itemCount: categoryData.items.length,
      itemBuilder: (context, index) => ProductTile(categoryData.items[index]),
    );
  }
}
