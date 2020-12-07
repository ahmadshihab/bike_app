library category_state;

import 'dart:convert';

import 'package:bikes_app/model/category_model/category_model.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_state.g.dart';

abstract class CategoryState
    implements Built<CategoryState, CategoryStateBuilder> {
  // fields go here

  @nullable
  String get error;

  @nullable
  bool get isLoading;

  BuiltList<CategoryModel> get menus;

  //
  CategoryState._();

  factory CategoryState([updates(CategoryStateBuilder b)]) = _$CategoryState;

  factory CategoryState.initail() {
    return CategoryState((b) => b
      ..error = ""
      ..isLoading = false
      ..menus = null);
  }
}
