import 'package:bikes_app/models/dart/categories.dart';
import 'file:///E:/Android%20Projects/flutter_app/bikes_app/lib/widgets/ProductList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsMenus extends StatefulWidget {
  @override
  _ProductsMenusState createState() => _ProductsMenusState();
}

class _ProductsMenusState extends State<ProductsMenus> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<Categories>(context).fetchItems().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ProductList());
  }
}
