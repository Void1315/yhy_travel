import 'package:flutter/material.dart';
import 'package:yhy_travel/models/theme/theme_model.dart';
import 'actions/theme_action.dart';

class AppState {
  ThemeModel themeState;
  AppState({this.themeState});
  AppState.initialState() {
    this.themeState = ThemeModel(theme: ThemeData.light());
  }
}

/**
 * 定义Reducer
 */
AppState appReducer(AppState state, action) {
  return AppState(
    themeState: ThemeReducer(state.themeState, action),
  );
}
