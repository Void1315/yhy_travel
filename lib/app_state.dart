import 'package:yhy_travel/actions/exports.dart';
import 'package:yhy_travel/models/exports.dart';
import 'package:yhy_travel/states/exports.dart';

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
