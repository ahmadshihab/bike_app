library category_model;

import 'dart:convert';

import 'package:bikes_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_model.g.dart';

abstract class CategoryModel
    implements Built<CategoryModel, CategoryModelBuilder> {
  String get title;

  BuiltList<CategoryModel> get categories;

  CategoryModel._();

  factory CategoryModel([updates(CategoryModelBuilder b)]) = _$CategoryModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CategoryModel.serializer, this));
  }

  static CategoryModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryModel> get serializer => _$categoryModelSerializer;
}
