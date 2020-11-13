import 'package:bikes_app/models/dart/categories.dart';
import 'package:bikes_app/screens/products_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Categories(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductsMenus(),
      ),
    );
  }
}
