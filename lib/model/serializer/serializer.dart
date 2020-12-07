library serializer;

import 'package:bikes_app/model/category_model/category_model.dart';
import 'package:bikes_app/model/type_model/type_list.dart';
import 'package:bikes_app/model/type_model/type_model.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializer.g.dart';

@SerializersFor(const [
  CategoryModel,
  TypeModel,
  TypeList,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(CategoryModel),
            ],
          )),
          () => ListBuilder<CategoryModel>())
      ..addBuilderFactory(
          (FullType(
            BuiltList,
            [
              const FullType(TypeList),
            ],
          )),
          () => ListBuilder<TypeList>()))
    .build();
