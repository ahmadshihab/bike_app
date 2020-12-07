library type_model;

import 'dart:convert';

import 'package:bikes_app/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'type_model.g.dart';

abstract class TypeModel implements Built<TypeModel, TypeModelBuilder> {
  // fields go here

  int get id;
  String get title;

  TypeModel._();

  factory TypeModel([updates(TypeModelBuilder b)]) = _$TypeModel;

  String toJson() {
    return json.encode(serializers.serializeWith(TypeModel.serializer, this));
  }

  static TypeModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        TypeModel.serializer, json.decode(jsonString));
  }

  static Serializer<TypeModel> get serializer => _$typeModelSerializer;
}
