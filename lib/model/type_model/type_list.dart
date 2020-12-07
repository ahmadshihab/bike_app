library type_list;

import 'dart:convert';

import 'package:bikes_app/model/serializer/serializer.dart';
import 'package:bikes_app/model/type_model/type_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'type_list.g.dart';

abstract class TypeList implements Built<TypeList, TypeListBuilder> {
  // fields go here

  @nullable
  @BuiltValueField(wireName: "BrakeType")
  BuiltList<TypeModel> get brakeType;

  @nullable
  @BuiltValueField(wireName: "Type")
  BuiltList<TypeModel> get discipline;

  @nullable
  @BuiltValueField(wireName: "FrameMaterial")
  BuiltList<TypeModel> get frameMaterial;

  @nullable
  @BuiltValueField(wireName: "RidingStyle")
  BuiltList<TypeModel> get ridingStyle;

  @nullable
  @BuiltValueField(wireName: "Models")
  BuiltList<TypeModel> get models;

  @nullable
  @BuiltValueField(wireName: "Brands")
  BuiltList<TypeModel> get brands;

  @nullable
  @BuiltValueField(wireName: "Flavors")
  BuiltList<TypeModel> get flavors;

  @nullable
  @BuiltValueField(wireName: "NutritionBrands")
  BuiltList<TypeModel> get nutritionBrands;

  @nullable
  @BuiltValueField(wireName: "NutritionModels")
  BuiltList<TypeModel> get nutritionModel;

  TypeList._();

  factory TypeList([updates(TypeListBuilder b)]) = _$TypeList;

  String toJson() {
    return json.encode(serializers.serializeWith(TypeList.serializer, this));
  }

  static TypeList fromJson(String jsonString) {
    return serializers.deserializeWith(
        TypeList.serializer, json.decode(jsonString));
  }

  static Serializer<TypeList> get serializer => _$typeListSerializer;
}
