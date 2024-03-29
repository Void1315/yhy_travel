import 'package:flutter/material.dart';
import 'package:yhy_travel/models/base_model.dart';

class ThemeModel extends Model{
  ThemeData theme;
  ThemeModel({this.theme});
  ThemeModel.init(){
    theme = ThemeData.light();
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'theme':theme
    };
  }
}