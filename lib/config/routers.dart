/*
 * @Author: 脑瘫码农
 * @Email: yuhaoyan_i@didiglobal.com
 * @Company: didi
 * @Date: 2019-10-26 23:46:42
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-11-09 14:18:23
 * @Description: 路由文件
 */
import 'package:flutter/material.dart';
import '../pages/login/index.dart';
Map<String, WidgetBuilder> router = {
  "/":(BuildContext context)=>LoginIndex(),
};