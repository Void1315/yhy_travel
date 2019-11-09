/*
 * @Author: 脑瘫码农
 * @Name: 于浩岩
 * @Email: asahichyan33@gmail.com
 * @Company: didi
 * @Date: 2019-10-20 14:34:16
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-10-20 18:25:55
 * @Description: Fetch类是Dio的封装，采用单例模式。
 */
import 'package:flutter/services.dart' show rootBundle;
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:yhy_travel/config/env.dart';

class Fetch extends DioForNative {
  static const FIX = "lib/json";
  factory Fetch()=>_getInstance();
  static Fetch get instance => _getInstance();
  static Fetch _instance;
  Fetch._internal() {
    // 初始化
    this.interceptors.add(InterceptorsWrapper(onRequest: _onRequest));
  }

  static Fetch _getInstance() {
    if (_instance == null) {
      _instance = new Fetch._internal();
    }
    return _instance;
  }
  /**
   * @Author: 脑瘫码农
   * @Name: 于浩岩
   * @Email: asahichyan33@gmail.com
   * @description: dio拦截器
   * @param {type} 
   * @return: 
   */
  _onRequest(RequestOptions options){
    if(Env.IS_DEVELOPMENT){
      var reg = RegExp(r"(/\S+)(?:\?|$)");
      return this.resolve(_readJsonFile(reg.firstMatch(options.path).group(0)));
    }
    return options;
  }
  _readJsonFile(String filePath) async{
    final String json = await rootBundle.loadString(FIX+filePath+".json");
    return json;
  }

}
