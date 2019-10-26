import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:yhy_travel/actions/drawer_menu_action.dart';
import 'package:yhy_travel/actions/user_action.dart';
import 'package:yhy_travel/api/apis.dart';
import 'package:yhy_travel/models/menu/drawer_model.dart';
import 'package:yhy_travel/models/theme/theme_model.dart';
import 'package:yhy_travel/states/drawer_menu_state.dart';
import 'package:yhy_travel/states/user_state.dart';
import 'actions/theme_action.dart';

class AppState {
  ThemeModel themeState; // 主题状态
  UserState userState; // 用户状态
  DrawerMenuState drawerMenuState; // drawer的菜单状态
  AppState({this.themeState, this.userState, this.drawerMenuState});
  AppState.initialState() {
    this.themeState = ThemeModel.init();
    this.userState = UserState.init();
    this.drawerMenuState = DrawerMenuState.init();
  }
}

/**
 * 定义Reducer
 */
AppState appReducer(AppState state, action) {
  if(action is Function) return state;
  return AppState(
    themeState: ThemeReducer(state.themeState, action),
    userState: UserReducer(state.userState, action),
    drawerMenuState: DrawerMenuReducer(state.drawerMenuState, action),
  );
}
