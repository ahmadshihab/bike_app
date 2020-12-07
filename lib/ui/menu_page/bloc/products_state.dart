library products_state;

import 'dart:convert';

import 'package:bikes_app/model/type_model/type_list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products_state.g.dart';

abstract class ProductsState
    implements Built<ProductsState, ProductsStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  bool get isExpanded;

  @nullable
  TypeList get menus;

  ProductsState._();

  factory ProductsState([updates(ProductsStateBuilder b)]) = _$ProductsState;

  factory ProductsState.initail() {
    return ProductsState((b) => b
      ..error = ""
      ..isLoading = false
      ..isExpanded = false
      ..menus = null);
  }
}
