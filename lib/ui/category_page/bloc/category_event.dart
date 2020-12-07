library category_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_event.g.dart';

abstract class CategoryEvent {}

abstract class GetCategory extends CategoryEvent
    implements Built<GetCategory, GetCategoryBuilder> {
  // fields go here

  GetCategory._();

  factory GetCategory([updates(GetCategoryBuilder b)]) = _$GetCategory;
}

abstract class ClearError extends CategoryEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
