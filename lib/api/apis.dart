import 'package:dio/dio.dart';
import 'package:yhy_travel/api/fetch.dart';
import 'package:yhy_travel/api/urls.dart';
const String prefix = "127.0.0.1"; // 接口地址前缀
class API{
  static Future<Response<dynamic>> getUserInfo()=>Fetch().get(prefix+Url.getUserInfo);
}