import 'package:bikes_app/ui/menu_page/bloc/products_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/http_helper/http_helper.dart';
import 'data/http_helper/ihttp_helper.dart';
import 'data/repository/irepository.dart';
import 'data/repository/repository.dart';
import 'ui/category_page/bloc/category_bloc.dart';

const String BaseUrl = "http://bikehub.store/api/";

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        "charset": "utf-8",
        "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)))));

  // data

  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl()));

  /// CategoryBloc

  sl.registerFactory(() => CategoryBloc(sl()));

  /// CategoryBloc

  sl.registerFactory(() => ProductsBloc(sl()));
}
