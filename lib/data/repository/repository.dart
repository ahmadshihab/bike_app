import 'package:bikes_app/data/http_helper/ihttp_helper.dart';
import 'package:bikes_app/data/repository/irepository.dart';
import 'package:bikes_app/model/category_model/category_model.dart';
import 'package:bikes_app/model/type_model/type_list.dart';
import 'package:built_collection/src/list.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;

  Repository(this._ihttpHelper);

  @override
  Future<BuiltList<CategoryModel>> getCategory() async {
    return await _ihttpHelper.getCategory();
  }

  @override
  Future<TypeList> getMenus() async {
    return await _ihttpHelper.getMenus();
    throw UnimplementedError();
  }
}
