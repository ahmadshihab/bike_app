import 'dart:convert';

import 'package:bikes_app/model/category_model/category_model.dart';
import 'package:bikes_app/model/serializer/serializer.dart';
import 'package:bikes_app/model/type_model/type_list.dart';

import 'package:built_collection/src/list.dart';
import 'package:built_value/async_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:http/http.dart';

import 'ihttp_helper.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  var url = "http://bikehub.store/api/customer/menus";

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<BuiltList<CategoryModel>> getCategory() async {
    _dio.interceptors.add(CookieManager(cookieJar));
    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        print('getMenus Response body  ${response.data}');

        final BuiltList<CategoryModel> baseResponse =
            serializers.deserialize(json.decode(response.data),
                specifiedType: FullType(
                  BaseResponse,
                  [
                    FullType(CategoryModel),
                  ],
                ));

        print("getMenus status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw UnimplementedError();
        }
      } else {
        throw UnimplementedError();
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<TypeList> getMenus() async {
    _dio.interceptors.add(CookieManager(cookieJar));
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        //print('getMenus Response body  ${response.data}');

        final TypeList baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(TypeList));

        //print("getMenus status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    throw UnimplementedError();
  }
}
