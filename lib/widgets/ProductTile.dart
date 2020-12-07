// import 'dart:math';
//
// import 'package:bikes_app/models/dart/products.dart';
// import 'package:bikes_app/models/model/products.dart';
// import 'package:flutter/material.dart';
//
// class ProductTile extends StatefulWidget {
//   final String title;
//   ProductTile(this.title);
//
//   @override
//   _ProductTileState createState() => _ProductTileState();
// }
//
// class _ProductTileState extends State<ProductTile> {
//   var _expanded = false;
//   List<Product> productList;
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         ListTile(
//           title: Text(
//             widget.title,
//             style: TextStyle(
//                 color: Colors.black45,
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold),
//           ),
//           trailing: IconButton(
//             onPressed: () async {
//               productList = await Product().fetchProductsLists(widget.title);
//               setState(() {
//                 _expanded = !_expanded;
//               });
//             },
//             icon: Icon(
//               Icons.expand_more,
//               color: Colors.deepOrange,
//             ),
//           ),
//         ),
//         if (_expanded)
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
//             height: min(productList.length * 20.0 + 10, height * 0.75),
//             child: ListView.builder(
//               padding: EdgeInsets.only(left: 24, top: 16),
//               itemCount: productList.length,
//               itemBuilder: (context, index) {
//                 return Text(
//                   productList[index].title,
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.w700),
//                 );
//               },
//             ),
//           ),
//         Divider()
//       ],
//     );
//   }
// }
