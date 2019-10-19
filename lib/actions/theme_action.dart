import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:yhy_travel/models/theme_model.dart';
/**
 * 切换至暗色主题
 */
class DartThemeAction {
  static ThemeModel setDartTheme(
      ThemeModel themeState, DartThemeAction action) {
    themeState.theme = ThemeData.dark();
    return themeState;
  }
}
/**
 * 切换至亮色主题
 */
class LightThemeAction {
  static ThemeModel setLightTheme(
      ThemeModel themeState, LightThemeAction action) {
    themeState.theme = ThemeData.light();
    return themeState;
  }
}
/**
 * 切换主题
 */
class SwitchThemeAction {
  static ThemeModel switchTheme(ThemeModel themeState, SwitchThemeAction action) {
    themeState.theme = themeState.theme == ThemeData.dark()
        ? ThemeData.light()
        : ThemeData.dark();
    return themeState;
  }
}

/*
 * 绑定Action与动作
 */
final ThemeReducer = combineReducers<ThemeModel>([
  TypedReducer<ThemeModel, DartThemeAction>(DartThemeAction.setDartTheme),
  TypedReducer<ThemeModel, SwitchThemeAction>(SwitchThemeAction.switchTheme),
  TypedReducer<ThemeModel, LightThemeAction>(LightThemeAction.setLightTheme),
]);
