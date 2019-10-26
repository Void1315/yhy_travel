import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yhy_travel/actions/drawer_menu_action.dart';
import 'package:yhy_travel/app_state.dart';
import 'package:yhy_travel/components/drawer_top_card/drawer_top_card.dart';
import 'package:yhy_travel/states/drawer_menu_state.dart';

class IndexDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: StoreConnector<AppState, _ViewModel>(
        onInit: (store){
          if(store.state.drawerMenuState.drawerMenuList.length==0)
            store.dispatch(waitAndDispatch);
        },
        converter: (store) {
          return _ViewModel.create(store);
        },
        builder: (context, viewModel) {
          return Column(
            children: <Widget>[
              DrawerTopCard(),
              ...viewModel.buildList(),
            ],
          );
        },
      ),
    );
  }
}

class _ViewModel {
  DrawerMenuState drawerMenuState;
  Function() onInitData;
  _ViewModel(this.drawerMenuState);
  factory _ViewModel.create(Store<AppState> store){
    return _ViewModel(store.state.drawerMenuState);
  }
  List<Widget> buildList() {
    List<Widget> list = new List();
    this.drawerMenuState.drawerMenuList.forEach((value) {
      list.add(ListTile(
        leading: Icon(Icons.home),
        title: Text(value.title),
      ));
    });
    return list;
  }
}
