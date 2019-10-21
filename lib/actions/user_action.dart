/*
 * @Author: 脑瘫码农
 * @Name: 于浩岩
 * @Email: asahichyan33@gmail.com
 * @Company: didi
 * @Date: 2019-10-21 20:19:38
 * @LastEditors: 脑瘫码农
 * @LastEditTime: 2019-10-21 20:28:29
 * @Description: 文件描述
 */
/*
 * 绑定Action与动作
 */
import 'package:redux/redux.dart';
import 'package:yhy_travel/states/user_state.dart';
/**
 * 直接修改userState本体的action，放到这里。
 */
class SetUserStateAction{
  bool isLogin; // 登录状态
  SetUserStateAction({this.isLogin});

  /**
   * 修改登录状态
   */
  static UserState setLoginState(UserState userState,SetUserStateAction action){
    userState.isLogin = userState?.isLogin;
    return userState;
  }
}
final UserReducer = combineReducers<UserState>([
  TypedReducer<UserState, SetUserStateAction>(SetUserStateAction.setLoginState),
]);