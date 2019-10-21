import 'package:flutter/material.dart';
import 'package:yhy_travel/actions/user_action.dart';
import 'package:yhy_travel/models/theme/theme_model.dart';
import 'package:yhy_travel/states/user_state.dart';
import 'actions/theme_action.dart';

class AppState {
  ThemeModel themeState; // 主题状态
  UserState userState; // 用户状态
  AppState({this.themeState, this.userState});
  AppState.initialState() {
    this.themeState = ThemeModel(theme: ThemeData.light());
    this.userState = UserState.init();
  }
}

/**
 * 定义Reducer
 */
AppState appReducer(AppState state, action) {
  return AppState(
    themeState: ThemeReducer(state.themeState, action),
    userState: UserReducer(state.userState, action),
  );
}
