/*
 * @Author: 脑瘫码农
 * @Email: yuhaoyan_i@didiglobal.com
 * @Company: didi
 * @Date: 2019-10-26 23:46:42
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-11-09 14:15:45
 * @Description: 主入口
 */
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:yhy_travel/app_state.dart';
import 'package:yhy_travel/config/env.dart';
import './config/routers.dart' as Routers;

main() {
  // debugPaintSizeEnabled = true; // 显示网格线
  Env(); // 初始化Env配置文件
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Store<AppState>(
      appReducer,
      initialState: AppState.initialState(),
      middleware: [thunkMiddleware],
    );
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
