import 'dart:convert' show JsonCodec;

import 'package:yhy_travel/api/apis.dart';
import 'package:yhy_travel/models/base_model.dart';

class DrawerMenuModel extends Model {
  num id; // 主键 没什么好说的
  String title; // 标题
  String path; // 跳转地址
  String icon; // 表现图标

  DrawerMenuModel.init() {
    DrawerMenuModel.fromJson(this._initData());
  }
  _initData() async {
    var json = (await API.getDrawerMenu()).data;
    var jsonDate = JsonCodec().decode(json);
    print(jsonDate is List); // 请修复错误 json中是一个List文件
    return jsonDate;
  }

  DrawerMenuModel.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    id = json['id'];
    title = json['title'];
    path = json['path'];
    icon = json['icon'];
  }

  @override
  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'path': path, 'icon': icon};
}
