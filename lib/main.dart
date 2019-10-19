import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:yhy_travel/app_state.dart';
import './config/routers.dart' as Routers;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store =
        Store<AppState>(appReducer, initialState: AppState.initialState());
    return StoreProvider<AppState>(
      store: store,
      child: StoreBuilder<AppState>(
        builder: (context, store) {
          return MaterialApp(
            theme: store.state.themeState.theme,
            routes: Routers.router,
          );
        },
      ),
    );
  }
}
