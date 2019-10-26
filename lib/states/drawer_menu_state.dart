import 'package:yhy_travel/models/menu/drawer_model.dart';

class DrawerMenuState {
  List<DrawerMenuModel> drawerMenuList;
  DrawerMenuState.init() {
    this.drawerMenuList = List<DrawerMenuModel>();
  }
  DrawerMenuState.fromList(List<DrawerMenuModel> list) {
    this.drawerMenuList = list;
  }
}
