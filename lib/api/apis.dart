import 'package:dio/dio.dart';
import 'package:yhy_travel/api/fetch.dart';
import 'package:yhy_travel/api/urls.dart';
const String prefix = "127.0.0.1";
class API{
  static Future<Response<dynamic>> getUserInfo()=>Fetch().get(prefix+Url.getUserInfo);

}