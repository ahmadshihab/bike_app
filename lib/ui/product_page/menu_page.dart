import 'dart:math';

import 'package:bikes_app/data/http_helper/http_helper.dart';
import 'package:bikes_app/data/repository/repository.dart';
import 'package:bikes_app/model/type_model/type_list.dart';
import 'package:bikes_app/model/type_model/type_model.dart';
import 'package:bikes_app/ui/category_page/bloc/category_bloc.dart';
import 'package:bikes_app/ui/category_page/bloc/category_event.dart';
import 'package:bikes_app/ui/category_page/bloc/category_state.dart';
import 'package:bikes_app/ui/menu_page/bloc/products_bloc.dart';
import 'package:bikes_app/ui/menu_page/bloc/products_event.dart';
import 'package:bikes_app/ui/menu_page/bloc/products_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injectoin.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  String type;
  int id = 0;

  final _bloc = sl<ProductsBloc>();

  @override
  void initState() {
    _bloc.add(GetMenu());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, ProductsState state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    DropdownButton<TypeModel>(
                      hint: Text("break type"),
                      items: state.menus.brakeType.map((TypeModel value) {
                        return new DropdownMenuItem<TypeModel>(
                          value: value,
                          child: new Text(value.title),
                        );
                      }).toList(),
                      onChanged: (TypeModel value) {
                        setState(() {
                          id = value.id;
                          type = value.title;
                        });
                      },
                    ),
                  ],
                ),
                //if (_expanded)
                // Divider()
              ],
            ),
          ),
        );
      },
    );
  }
}
