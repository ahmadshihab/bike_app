import 'package:bikes_app/ui/product_page/menu_page.dart';
import 'package:flutter/material.dart';
import 'injectoin.dart';

void main() async {
  await iniGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}
