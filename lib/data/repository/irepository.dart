import 'package:bikes_app/model/category_model/category_model.dart';
import 'package:bikes_app/model/type_model/type_list.dart';
import 'package:built_collection/built_collection.dart';

abstract class IRepository {
  Future<BuiltList<CategoryModel>> getCategory();

  Future<TypeList> getMenus();
}
