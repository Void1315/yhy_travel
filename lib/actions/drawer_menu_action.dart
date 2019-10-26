import 'dart:convert' show JsonCodec;

import 'package:dio/src/response.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:yhy_travel/api/apis.dart';
import 'package:yhy_travel/app_state.dart';
import 'package:yhy_travel/models/menu/drawer_model.dart';
import 'package:yhy_travel/states/drawer_menu_state.dart';

class SetDrawerMenuAction {
  DrawerMenuState state;
  SetDrawerMenuAction(this.state);
  static DrawerMenuState setDraweMenu(
      DrawerMenuState state, SetDrawerMenuAction action) {
    return action.state;
  }
}

class SetFromJsonAction {
  List json;
  SetFromJsonAction(this.json);
  static DrawerMenuState setFromJsonAction(
      DrawerMenuState state, SetFromJsonAction action) {
    List<DrawerMenuModel> ll = new List();
    action.json.forEach((value) => ll.add(DrawerMenuModel.fromMap(value)));
    state.drawerMenuList = ll;
    return state;
  }
}

ThunkAction<AppState> waitAndDispatch = (Store<AppState> store) async {
  Response res = await API.getDrawerMenu();
  List json = JsonCodec().decode(res.data);
  store.dispatch(SetFromJsonAction(json));
};

final DrawerMenuReducer = combineReducers<DrawerMenuState>([
  TypedReducer<DrawerMenuState, SetDrawerMenuAction>(
      SetDrawerMenuAction.setDraweMenu),
  TypedReducer<DrawerMenuState, SetFromJsonAction>(
      SetFromJsonAction.setFromJsonAction),
]);
